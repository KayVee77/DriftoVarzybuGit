import pymysql
import openpyxl


db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'driftovarzybos'
}


insert_query = """
INSERT INTO Vairuotojai (Vardas, Pavarde, Salis)
VALUES (%s, %s, %s)
"""

select_query = """
SELECT COUNT(*) FROM Vairuotojai WHERE Vardas = %s AND Pavarde = %s
"""

insert_dalyvavimas_query = """
INSERT INTO DalyvavimasLygose (VairuotojoID, LygosID)
SELECT VairuotojoID, 1 AS LygosID
FROM Vairuotojai;
"""

file_path = 'EXCEL/STREET-I-etapo-rezultatai-2021.05.16.xlsx'

try:

    connection = pymysql.connect(**db_config)
    cursor = connection.cursor()
    print("Prisijungta prie MySQL duomenų bazės!")


    workbook = openpyxl.load_workbook(file_path)
    sheet = workbook['Overall']


    for row in sheet.iter_rows(min_row=3, values_only=True):
        if row[1] and isinstance(row[1], str):
            if row[1].strip() == "Vairuotojas":
                continue


            vardas_pavarde = row[1].strip().split(" ", 1)
            vardas = vardas_pavarde[0]
            pavarde = vardas_pavarde[1] if len(vardas_pavarde) > 1 else "Nežinoma"


            pavarde = pavarde[:50]

            salis = "Lietuva"


            cursor.execute(select_query, (vardas, pavarde))
            result = cursor.fetchone()

            if result[0] == 0:
                cursor.execute(insert_query, (vardas, pavarde, salis))
                print(f"Įrašytas: {vardas} {pavarde}")
            else:
                print(f"Praleistas (jau egzistuoja): {vardas} {pavarde}")

    cursor.execute(insert_dalyvavimas_query)
    connection.commit()
    print("Visi vairuotojai sėkmingai priskirti Street lygai!")
    print("Duomenys sėkmingai įkelti į duomenų bazę!")

except Exception as e:
    print(f"Klaida: {e}")

finally:

    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
