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

insert_rezultatai_query = """
INSERT INTO galutiniairezultatai 
(VarzybuID, VairuotojoID, Etapo1Taskai, Etapo2Taskai, Etapo3Taskai, Etapo4Taskai, Etapo5Taskai, Etapo6Taskai, BendriTaskai, Pozicija)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s);
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


    pattern = r"(\d+)\s+([A-Za-zĄČĘĖĮŠŲŪŽąčęėįšųūž]+ [A-Za-zĄČĘĖĮŠŲŪŽąčęėįšųūž]+)\s+" \
              r"([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)\s+([\d\.]+)"
    matches = re.findall(pattern, pdf_text)

    varzybu_id = 2


    for match in matches:
        pozicija, vardas_pavarde, etapo1, etapo2, etapo3, etapo4, etapo5, etapo6, bendri_taskai, iskaitiniai_taskai = match
        vardas, pavarde = vardas_pavarde.split(" ", 1)


        cursor.execute(select_vairuotojas_query, (vardas, pavarde))
        result = cursor.fetchone()

        if result:
            vairuotojo_id = result[0]


            cursor.execute(insert_rezultatai_query, (
                varzybu_id, vairuotojo_id, float(etapo1), float(etapo2), float(etapo3),
                float(etapo4), float(etapo5), float(etapo6), float(bendri_taskai), int(pozicija)
            ))
            print(f"Itraukti galutiniai rezultatai: {vardas} {pavarde}")
        else:
            print(f"Nerastas vairuotojas: {vardas} {pavarde}")


    connection.commit()
    print("Duomenys sėkmingai įkelti į galutiniairezultatai!")

except Exception as e:
    print(f"Klaida: {e}")

finally:
    cursor.close()
    connection.close()
    print("Ryšys su MySQL uždarytas.")
