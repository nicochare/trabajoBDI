SELECT 
    'DROP ' || OBJECT_TYPE || ' ' || OBJECT_NAME || ' CASCADE CONSTRAINTS;' 
       AS "Consulta para generar Borrado"
FROM USER_OBJECTS
WHERE OBJECT_TYPE = 'TABLE';


SELECT * FROM USER_OBJECTS;--Para comprobar
