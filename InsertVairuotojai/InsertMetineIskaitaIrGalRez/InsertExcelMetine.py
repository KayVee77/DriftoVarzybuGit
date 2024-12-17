import pandas as pd
import pymysql

# Database configuration
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'driftovarzybos'
}

# Queries
select_vairuotojas_query = """
SELECT VairuotojoID FROM Vairuotojai WHERE Vardas = %s AND Pavarde = %s;
"""

insert_metine_query = """
INSERT INTO MetineIskaita (SezonoID, VairuotojoID, BendriTaskai, Pozicija)
VALUES (%s, %s, %s, %s);
"""

# File and sheet details
excel_file_path = "1.-Reworked-1.-Metiniai-rezultatai_visos-lygos_2022.09.20 (1).xlsx"
sheet_name = 'STREET'  # Adjust based on actual sheet name

def read_excel(file_path, sheet_name):
    """Reads specified sheet from an Excel file."""
    return pd.read_excel(file_path, sheet_name=sheet_name)

try:
    # Connect to the database
    connection = pymysql.connect(**db_config)
    cursor = connection.cursor()

    print("Prisijungta prie MySQL!")

    # Load Excel data
    df = pd.read_excel(excel_file_path, sheet_name=sheet_name, skiprows=5)
    df.columns = df.columns.str.strip()  # Clean column names
    print("Column names in the Excel file:", df.columns.tolist())

    sezonas_id = 4  # Set the season ID
    for index, row in df.iterrows():
        row = row.where(pd.notnull(row), None)

        # Extract columns based on your structure
        vieta = row['Vieta']  # Position
        vardas_pavarde = row['Vardas Pavardė']
        bendri_taskai = row['Sezono taškai (įskaita)']

        if not vardas_pavarde or len(vardas_pavarde.split()) < 2:
            print(f"Praleistas įrašas dėl netinkamo vardo: {vardas_pavarde}")
            continue

        # Split full name into first and last names
        vardas, pavarde = vardas_pavarde.split(" ", 1)

        # Fetch VairuotojoID from database
        cursor.execute(select_vairuotojas_query, (vardas, pavarde))
        result = cursor.fetchone()

        if result:
            vairuotojo_id = result[0]
            # Insert into MetineIskaita
            cursor.execute(insert_metine_query, (sezonas_id, vairuotojo_id, bendri_taskai, vieta))
            print(f"Itrauka: {vardas} {pavarde} - Pozicija: {vieta}, Taškai: {bendri_taskai}")
        else:
            print(f"Nerastas vairuotojas: {vardas} {pavarde}")

    # Commit changes
    connection.commit()
    print("Duomenys sėkmingai įkelti į MetineIskaita!")

except Exception as e:
    print(f"Klaida: {e}")

finally:
    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
