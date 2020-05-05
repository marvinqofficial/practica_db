# -*- coding: utf-8 -*-
"""
Created on Mon May  4 20:44:04 2020

@author: marvi
"""


import mysql.connector
import matplotlib.pyplot as plt



mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="marlindo"
)


mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM cine WHERE sexo = 'F' ORDER BY opinion")

myresult = mycursor.fetchall()
print('Datos sexo femenino')
for x in myresult:
  print(x)


mycursor.execute("SELECT * FROM cine WHERE sexo = 'M' ORDER BY opinion")

myresult = mycursor.fetchall()
print('\n\nDatos sexo masculino')



for x in myresult:
  print(x)
  
  
mycursor.execute("SELECT COUNT(*) FROM cine WHERE tipo_inv='invitado'")

d1 = mycursor.fetchall()

mycursor.execute("SELECT COUNT(*) FROM cine WHERE tipo_inv='prensa'")

d2 = mycursor.fetchall()



datos = [d1[0],d2[0]]
personas = ["Invitado","Prensa"]
plt.pie(datos, labels=personas)
plt.show()
  
mydb.close
  
  