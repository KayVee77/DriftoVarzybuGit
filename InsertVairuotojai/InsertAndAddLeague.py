import pymysql
import openpyxl

# MySQL prisijungimo parametrai
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'driftovarzybos'
}

# SQL užklausos
insert_query = """
INSERT INTO Vairuotojai (Vardas, Pavarde, Salis)
VALUES (%s, %s, %s)
"""

select_query = """
SELECT VairuotojoID FROM Vairuotojai WHERE Vardas = %s AND Pavarde = %s
"""

insert_dalyvavimas_query = """
INSERT INTO DalyvavimasLygose (VairuotojoID, LygosID)
VALUES (%s, %s)
"""

file_path = 'EXCEL/SEMI-PRO-lygos-3-etapo-rezultatai_08.13.xlsx'

try:

    connection = pymysql.connect(**db_config)
    cursor = connection.cursor()
    print("Prisijungta prie MySQL duomenų bazės!")


    workbook = openpyxl.load_workbook(file_path)
    sheet = workbook['SEMI PRO REZULTATAI']

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

            if not result:

                cursor.execute(insert_query, (vardas, pavarde, salis))
                vairuotojo_id = cursor.lastrowid
                print(f"Įrašytas: {vardas} {pavarde}")


                cursor.execute(insert_dalyvavimas_query, (vairuotojo_id, 2))
                print(f"Priskirta lyga: LygosID 2 - {vardas} {pavarde}")
            else:

                vairuotojo_id = result[0]
                cursor.execute(insert_dalyvavimas_query, (vairuotojo_id, 2))
                print(f"Priskirta lyga (egzistuoja): LygosID 2 - {vardas} {pavarde}")

    # Išsaugome pakeitimus
    connection.commit()
    print("Duomenys sėkmingai įkelti ir priskirti lygai!")

except Exception as e:
    print(f"Klaida: {e}")

finally:
    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
