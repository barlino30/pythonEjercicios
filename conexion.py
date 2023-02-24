import pymysql

class Conexion:
    def __init__(self):
        self.conexion = pymysql.connect(
            host = "localhost",
            port = 3306,
            user = "root",
            passwd = "",
            db = "institucion_educativa"
        )

        self.cursor = self.conexion.cursor()
        print("conexion ok")

    def mostrar_estudiantes(self):
        sql = "SELECT nombres, codigo FROM estudiante"

        self.cursor.execute(sql)
        
        for nombres, codigo in self.cursor.fetchall():
            print("{0} {1}".format(nombres, codigo))

    def mostrar_estudiante(self, id):
        sql = "SELECT nombres, codigo FROM estudiante WHERE id = {}".format(id)

        self.cursor.execute(sql)
        
        estudiante = self.cursor.fetchone()
        print("Nombres:", estudiante[0])
        print("Código:", estudiante[1])

    def registrar_estudiante(self, nombres, codigo):
        sql = "INSERT INTO estudiante(nombres, codigo) VALUES ('{}', '{}')".format(nombres, codigo)

        self.cursor.execute(sql)
        self.conexion.commit()
        print("Estudiante registrado")

    def actualizar_estudiante(self, nombres, codigo, id):
        sql = "UPDATE estudiante SET nombres = '{}', codigo = '{}' WHERE id = '{}'".format(nombres, codigo, id)

        self.cursor.execute(sql)
        self.conexion.commit()
        print("Estudiante actualizado")

    def Eliminar_estudiante(self, id):
        sql = "DELETE FROM estudiante WHERE id = '{}'".format(id)

        self.cursor.execute(sql)
        self.conexion.commit()
        print("Estudiante eliminado")

        