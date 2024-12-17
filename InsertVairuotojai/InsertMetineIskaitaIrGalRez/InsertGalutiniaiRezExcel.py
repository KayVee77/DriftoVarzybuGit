import pandas as pd
import pymysql


db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'driftovarzybos'
}


select_vairuotojas_query = """
SELECT VairuotojoID FROM Vairuotojai WHERE Vardas = %s AND Pavarde = %s;
"""


insert_rezultatai_query = """
INSERT INTO galutiniairezultatai 
(VarzybuID, VairuotojoID, Etapo1Taskai, Etapo2Taskai, Etapo3Taskai, Etapo4Taskai, Etapo5Taskai, BendriTaskai, Pozicija)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s);
"""


excel_file_path = "1.-Reworked-1.-Metiniai-rezultatai_visos-lygos_2022.09.20 (1).xlsx"
sheet_name = "STREET"

try:

    connection = pymysql.connect(**db_config)
    cursor = connection.cursor()
    print("Prisijungta prie MySQL!")


    df = pd.read_excel(excel_file_path, sheet_name=sheet_name, skiprows=5)
    df.columns = df.columns.str.strip()
    print("Column names in the Excel file:", df.columns.tolist())

    varzybu_id = 3


    df = df.where(pd.notnull(df), None)


    for index, row in df.iterrows():
        try:

            pozicija = row['Vieta']
            vardas_pavarde = row['Vardas Pavardė']
            etapo1 = row['I etapo taškai  (06.11-12)']
            etapo2 = row['II etapo taškai (07.02-03)']
            etapo3 = row['III etapo taškai (07.22-23)']
            etapo4 = row['IV etapo taškai (08.27-28)']
            etapo5 = row['V etapo taškai (08.17)']
            bendri_taskai = row['Sezono taškai (įskaita)']


            if not vardas_pavarde or len(vardas_pavarde.split()) < 2:
                print(f"Praleistas įrašas: netinkama 'Vardas Pavardė' reikšmė: {vardas_pavarde}")
                continue

            vardas, pavarde = vardas_pavarde.split(" ", 1)


            cursor.execute(select_vairuotojas_query, (vardas, pavarde))
            result = cursor.fetchone()

            if result:
                vairuotojo_id = result[0]

                cursor.execute(insert_rezultatai_query, (
                    varzybu_id, vairuotojo_id, etapo1, etapo2, etapo3, etapo4, etapo5, bendri_taskai, pozicija
                ))
                print(f"Itraukti rezultatai: {vardas} {pavarde} - Pozicija: {pozicija}, Taškai: {bendri_taskai}")
            else:
                print(f"Nerastas vairuotojas: {vardas} {pavarde}")
        except Exception as row_error:
            print(f"Klaida apdorojant eilutę {index}: {row_error}")


    connection.commit()
    print("Duomenys sėkmingai įkelti į galutiniairezultatai!")

except Exception as e:
    print(f"Klaida: {e}")

finally:
    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
