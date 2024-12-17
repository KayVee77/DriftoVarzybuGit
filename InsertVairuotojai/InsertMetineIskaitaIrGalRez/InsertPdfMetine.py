import PyPDF2
import pymysql
import re


db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': 'root',
    'database': 'driftovarzybos'
}


select_vairuotojas_query = """
SELECT VairuotojoID FROM Vairuotojai WHERE Vardas = %s AND Pavarde = %s;
"""

insert_metine_query = """
INSERT INTO MetineIskaita (SezonoID, VairuotojoID, BendriTaskai, Pozicija)
VALUES (%s, %s, %s, %s);
"""


pdf_file_path = "Semi-PRO-lygos-metiniai-rezultatai.pdf"


def extract_text_from_pdf(file_path):
    with open(file_path, "rb") as file:
        reader = PyPDF2.PdfReader(file)
        text = ""
        for page in reader.pages:
            text += page.extract_text()
        return text


try:
    connection = pymysql.connect(**db_config)
    cursor = connection.cursor()
    print("Prisijungta prie MySQL!")


    pdf_text = extract_text_from_pdf(pdf_file_path)


    pattern = r"(\d+)\s+([A-Za-zĄČĘĖĮŠŲŪŽąčęėįšųūž]+ [A-Za-zĄČĘĖĮŠŲŪŽąčęėįšųūž]+)\s+[\d\.\s]+\s+(\d+\.\d+)"
    matches = re.findall(pattern, pdf_text)

    sezonas_id = 2

    for match in matches:
        vieta, vardas_pavarde, taskai = match
        vardas, pavarde = vardas_pavarde.split(" ", 1)
        taskai = float(taskai)
        vieta = int(vieta)


        cursor.execute(select_vairuotojas_query, (vardas, pavarde))
        result = cursor.fetchone()

        if result:
            vairuotojo_id = result[0]


            cursor.execute(insert_metine_query, (sezonas_id, vairuotojo_id, taskai, vieta))
            print(f"Itraukta: {vardas} {pavarde} - Taskai: {taskai}, Vieta: {vieta}")
        else:
            print(f"Nerastas vairuotojas: {vardas} {pavarde}")


    connection.commit()
    print("Duomenys sėkmingai įkelti į MetineIskaita!")

except Exception as e:
    print(f"Klaida: {e}")

finally:
    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
