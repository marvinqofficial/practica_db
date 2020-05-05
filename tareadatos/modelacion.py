# -*- coding: utf-8 -*-
"""
Created on Mon May  4 20:29:33 2020

@author: marvi
"""

import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="marlindo"
)


mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM calificacion ORDER BY satisfecho")

myresult = mycursor.fetchall()

print('satisfaccion','producto','calificacion')
for x in myresult:
  print(x[1],'          ',x[2],'          ',x[3])