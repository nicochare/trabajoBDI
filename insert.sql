-- Empleados (80)
INSERT INTO Empleado
  (idEmpleado, nombre, apellido1, apellido2, DNI, turno, salario, telefono, fecha_ingreso, correo, fecha_nacimiento, region, pais, numero, tipo_via, nombreCalle)
VALUES 
('E001', 'Nombre1', 'Ape1-1', 'Ape2-1', '11111111A', 'dia', 1200, '600100001', DATE '2022-01-01', 'e001@vet.com', DATE '1990-01-01', 'Region1', 'Pais1', 10, 'Calle', 'Primera'),
('E002', 'Nombre2', 'Ape1-2', 'Ape2-2', '11111112B', 'noche', 1300, '600100002', DATE '2022-01-02', 'e002@vet.com', DATE '1990-01-02', 'Region1', 'Pais1', 11, 'Avenida', 'Secundaria'),
('E003', 'Nombre3', 'Ape1-3', 'Ape2-3', '11111113C', 'dia', 1400, '600100003', DATE '2022-01-03', 'e003@vet.com', DATE '1990-01-03', 'Region2', 'Pais1', 12, 'Calle', 'Primera'),
('E004', 'Nombre4', 'Ape1-4', 'Ape2-4', '11111114D', 'noche', 1500, '600100004', DATE '2022-01-04', 'e004@vet.com', DATE '1990-01-04', 'Region2', 'Pais2', 13, 'Avenida', 'Terciaria'),
('E005', 'Nombre5', 'Ape1-5', 'Ape2-5', '11111115E', 'dia', 1600, '600100005', DATE '2022-01-05', 'e005@vet.com', DATE '1990-01-05', 'Region3', 'Pais2', 14, 'Calle', 'Primera'),
('E006', 'Nombre6', 'Ape1-6', 'Ape2-6', '11111116F', 'noche', 1700, '600100006', DATE '2022-01-06', 'e006@vet.com', DATE '1990-01-06', 'Region3', 'Pais3', 15, 'Avenida', 'Cuarta'),
('E007', 'Nombre7', 'Ape1-7', 'Ape2-7', '11111117G', 'dia', 1800, '600100007', DATE '2022-01-07', 'e007@vet.com', DATE '1990-01-07', 'Region4', 'Pais3', 16, 'Calle', 'Segunda'),
('E008', 'Nombre8', 'Ape1-8', 'Ape2-8', '11111118H', 'noche', 1900, '600100008', DATE '2022-01-08', 'e008@vet.com', DATE '1990-01-08', 'Region4', 'Pais4', 17, 'Avenida', 'Primera'),
('E009', 'Nombre9', 'Ape1-9', 'Ape2-9', '11111119J', 'dia', 2000, '600100009', DATE '2022-01-09', 'e009@vet.com', DATE '1990-01-09', 'Region5', 'Pais4', 18, 'Calle', 'Tercera'),
('E010', 'Nombre10', 'Ape1-10', 'Ape2-10', '11111110K', 'noche', 2100, '600100010', DATE '2022-01-10', 'e010@vet.com', DATE '1990-01-10', 'Region5', 'Pais5', 19, 'Avenida', 'Quinta'),

('E011', 'Nombre11', 'Ape1-11', 'Ape2-11', '11111111L', 'dia', 2200, '600100011', DATE '2022-01-11', 'e011@vet.com', DATE '1990-01-11', 'Region6', 'Pais5', 20, 'Calle', 'Primera'),
('E012', 'Nombre12', 'Ape1-12', 'Ape2-12', '11111112M', 'noche', 2300, '600100012', DATE '2022-01-12', 'e012@vet.com', DATE '1990-01-12', 'Region6', 'Pais6', 21, 'Avenida', 'Sexta'),
('E013', 'Nombre13', 'Ape1-13', 'Ape2-13', '11111113N', 'dia', 2400, '600100013', DATE '2022-01-13', 'e013@vet.com', DATE '1990-01-13', 'Region7', 'Pais6', 22, 'Calle', 'Cuarta'),
('E014', 'Nombre14', 'Ape1-14', 'Ape2-14', '11111114P', 'noche', 2500, '600100014', DATE '2022-01-14', 'e014@vet.com', DATE '1990-01-14', 'Region7', 'Pais7', 23, 'Avenida', 'Septima'),
('E015', 'Nombre15', 'Ape1-15', 'Ape2-15', '11111115Q', 'dia', 2600, '600100015', DATE '2022-01-15', 'e015@vet.com', DATE '1990-01-15', 'Region8', 'Pais7', 24, 'Calle', 'Quinta'),
('E016', 'Nombre16', 'Ape1-16', 'Ape2-16', '11111116R', 'noche', 2700, '600100016', DATE '2022-01-16', 'e016@vet.com', DATE '1990-01-16', 'Region8', 'Pais8', 25, 'Avenida', 'Octava'),
('E017', 'Nombre17', 'Ape1-17', 'Ape2-17', '11111117S', 'dia', 2800, '600100017', DATE '2022-01-17', 'e017@vet.com', DATE '1990-01-17', 'Region9', 'Pais8', 26, 'Calle', 'Sexta'),
('E018', 'Nombre18', 'Ape1-18', 'Ape2-18', '11111118T', 'noche', 2900, '600100018', DATE '2022-01-18', 'e018@vet.com', DATE '1990-01-18', 'Region9', 'Pais9', 27, 'Avenida', 'Novena'),
('E019', 'Nombre19', 'Ape1-19', 'Ape2-19', '11111119U', 'dia', 3000, '600100019', DATE '2022-01-19', 'e019@vet.com', DATE '1990-01-19', 'Region10', 'Pais9', 28, 'Calle', 'Septima'),
('E020', 'Nombre20', 'Ape1-20', 'Ape2-20', '11111120V', 'noche', 3100, '600100020', DATE '2022-01-20', 'e020@vet.com', DATE '1990-01-20', 'Region10', 'Pais10', 29, 'Avenida', 'Décima'),

-- Para poder seguir asignando roles a más empleados (veterinarios, cirujanos, admins, etc.):
('E021', 'Nombre21', 'Ape1-21', 'Ape2-21', '22222221A', 'dia', 1200, '600100021', DATE '2022-02-01', 'e021@vet.com', DATE '1990-02-01', 'R11', 'P11', 30, 'Calle', 'Primera'),
('E022', 'Nombre22', 'Ape1-22', 'Ape2-22', '22222222B', 'noche', 1250, '600100022', DATE '2022-02-02', 'e022@vet.com', DATE '1990-02-02', 'R11', 'P11', 31, 'Calle', 'Secundaria'),
('E023', 'Nombre23', 'Ape1-23', 'Ape2-23', '22222223C', 'dia', 1350, '600100023', DATE '2022-02-03', 'e023@vet.com', DATE '1990-02-03', 'R12', 'P11', 32, 'Avenida', 'Tercera'),
('E024', 'Nombre24', 'Ape1-24', 'Ape2-24', '22222224D', 'noche', 1450, '600100024', DATE '2022-02-04', 'e024@vet.com', DATE '1990-02-04', 'R12', 'P12', 33, 'Calle', 'Cuarta'),
('E025', 'Nombre25', 'Ape1-25', 'Ape2-25', '22222225E', 'dia', 1550, '600100025', DATE '2022-02-05', 'e025@vet.com', DATE '1990-02-05', 'R13', 'P12', 34, 'Avenida', 'Primera'),
('E026', 'Nombre26', 'Ape1-26', 'Ape2-26', '22222226F', 'noche', 1650, '600100026', DATE '2022-02-06', 'e026@vet.com', DATE '1990-02-06', 'R13', 'P13', 35, 'Calle', 'Sexta'),
('E027', 'Nombre27', 'Ape1-27', 'Ape2-27', '22222227G', 'dia', 1750, '600100027', DATE '2022-02-07', 'e027@vet.com', DATE '1990-02-07', 'R14', 'P13', 36, 'Avenida', 'Segunda'),
('E028', 'Nombre28', 'Ape1-28', 'Ape2-28', '22222228H', 'noche', 1850, '600100028', DATE '2022-02-08', 'e028@vet.com', DATE '1990-02-08', 'R14', 'P14', 37, 'Calle', 'Primera'),
('E029', 'Nombre29', 'Ape1-29', 'Ape2-29', '22222229J', 'dia', 1950, '600100029', DATE '2022-02-09', 'e029@vet.com', DATE '1990-02-09', 'R15', 'P14', 38, 'Avenida', 'Tercera'),
('E030', 'Nombre30', 'Ape1-30', 'Ape2-30', '22222230K', 'noche', 2050, '600100030', DATE '2022-02-10', 'e030@vet.com', DATE '1990-02-10', 'R15', 'P15', 39, 'Calle', 'Séptima'),

('E031', 'Nombre31', 'Ape1-31', 'Ape2-31', '22222231L', 'dia', 2150, '600100031', DATE '2022-02-11', 'e031@vet.com', DATE '1990-02-11', 'R16', 'P15', 40, 'Avenida', 'Cuarta'),
('E032', 'Nombre32', 'Ape1-32', 'Ape2-32', '22222232M', 'noche', 2250, '600100032', DATE '2022-02-12', 'e032@vet.com', DATE '1990-02-12', 'R16', 'P16', 41, 'Calle', 'Quinta'),
('E033', 'Nombre33', 'Ape1-33', 'Ape2-33', '22222233N', 'dia', 2350, '600100033', DATE '2022-02-13', 'e033@vet.com', DATE '1990-02-13', 'R17', 'P16', 42, 'Avenida', 'Sexta'),
('E034', 'Nombre34', 'Ape1-34', 'Ape2-34', '22222234P', 'noche', 2450, '600100034', DATE '2022-02-14', 'e034@vet.com', DATE '1990-02-14', 'R17', 'P17', 43, 'Calle', 'Primera'),
('E035', 'Nombre35', 'Ape1-35', 'Ape2-35', '22222235Q', 'dia', 2550, '600100035', DATE '2022-02-15', 'e035@vet.com', DATE '1990-02-15', 'R18', 'P17', 44, 'Avenida', 'Séptima'),
('E036', 'Nombre36', 'Ape1-36', 'Ape2-36', '22222236R', 'noche', 2650, '600100036', DATE '2022-02-16', 'e036@vet.com', DATE '1990-02-16', 'R18', 'P18', 45, 'Calle', 'Segunda'),
('E037', 'Nombre37', 'Ape1-37', 'Ape2-37', '22222237S', 'dia', 2750, '600100037', DATE '2022-02-17', 'e037@vet.com', DATE '1990-02-17', 'R19', 'P18', 46, 'Avenida', 'Tercera'),
('E038', 'Nombre38', 'Ape1-38', 'Ape2-38', '22222238T', 'noche', 2850, '600100038', DATE '2022-02-18', 'e038@vet.com', DATE '1990-02-18', 'R19', 'P19', 47, 'Calle', 'Cuarta'),
('E039', 'Nombre39', 'Ape1-39', 'Ape2-39', '22222239U', 'dia', 2950, '600100039', DATE '2022-02-19', 'e039@vet.com', DATE '1990-02-19', 'R20', 'P19', 48, 'Avenida', 'Octava'),
('E040', 'Nombre40', 'Ape1-40', 'Ape2-40', '22222240V', 'noche', 3050, '600100040', DATE '2022-02-20', 'e040@vet.com', DATE '1990-02-20', 'R20', 'P20', 49, 'Calle', 'Novena'),

('E041', 'Nombre41', 'Ape1-41', 'Ape2-41', '33333341A', 'dia', 3100, '600100041', DATE '2022-03-01', 'e041@vet.com', DATE '1990-03-01', 'R21', 'P21', 50, 'Calle', 'Décima'),
('E042', 'Nombre42', 'Ape1-42', 'Ape2-42', '33333342B', 'noche', 3200, '600100042', DATE '2022-03-02', 'e042@vet.com', DATE '1990-03-02', 'R21', 'P21', 51, 'Calle', 'Primera'),
('E043', 'Nombre43', 'Ape1-43', 'Ape2-43', '33333343C', 'dia', 3300, '600100043', DATE '2022-03-03', 'e043@vet.com', DATE '1990-03-03', 'R22', 'P21', 52, 'Avenida', 'Secundaria'),
('E044', 'Nombre44', 'Ape1-44', 'Ape2-44', '33333344D', 'noche', 3400, '600100044', DATE '2022-03-04', 'e044@vet.com', DATE '1990-03-04', 'R22', 'P22', 53, 'Calle', 'Tercera'),
('E045', 'Nombre45', 'Ape1-45', 'Ape2-45', '33333345E', 'dia', 3500, '600100045', DATE '2022-03-05', 'e045@vet.com', DATE '1990-03-05', 'R23', 'P22', 54, 'Avenida', 'Cuarta'),
('E046', 'Nombre46', 'Ape1-46', 'Ape2-46', '33333346F', 'noche', 3600, '600100046', DATE '2022-03-06', 'e046@vet.com', DATE '1990-03-06', 'R23', 'P23', 55, 'Calle', 'Primera'),
('E047', 'Nombre47', 'Ape1-47', 'Ape2-47', '33333347G', 'dia', 3700, '600100047', DATE '2022-03-07', 'e047@vet.com', DATE '1990-03-07', 'R24', 'P23', 56, 'Avenida', 'Quinta'),
('E048', 'Nombre48', 'Ape1-48', 'Ape2-48', '33333348H', 'noche', 3800, '600100048', DATE '2022-03-08', 'e048@vet.com', DATE '1990-03-08', 'R24', 'P24', 57, 'Calle', 'Sexta'),
('E049', 'Nombre49', 'Ape1-49', 'Ape2-49', '33333349J', 'dia', 3900, '600100049', DATE '2022-03-09', 'e049@vet.com', DATE '1990-03-09', 'R25', 'P24', 58, 'Avenida', 'Séptima'),
('E050', 'Nombre50', 'Ape1-50', 'Ape2-50', '33333350K', 'noche', 4000, '600100050', DATE '2022-03-10', 'e050@vet.com', DATE '1990-03-10', 'R25', 'P25', 59, 'Calle', 'Octava'),

('E051', 'Nombre51', 'Ape1-51', 'Ape2-51', '33333351L', 'dia', 4100, '600100051', DATE '2022-03-11', 'e051@vet.com', DATE '1990-03-11', 'R26', 'P25', 60, 'Avenida', 'Novena'),
('E052', 'Nombre52', 'Ape1-52', 'Ape2-52', '33333352M', 'noche', 4200, '600100052', DATE '2022-03-12', 'e052@vet.com', DATE '1990-03-12', 'R26', 'P26', 61, 'Calle', 'Primera'),
('E053', 'Nombre53', 'Ape1-53', 'Ape2-53', '33333353N', 'dia', 4300, '600100053', DATE '2022-03-13', 'e053@vet.com', DATE '1990-03-13', 'R27', 'P26', 62, 'Avenida', 'Secundaria'),
('E054', 'Nombre54', 'Ape1-54', 'Ape2-54', '33333354P', 'noche', 4400, '600100054', DATE '2022-03-14', 'e054@vet.com', DATE '1990-03-14', 'R27', 'P27', 63, 'Calle', 'Tercera'),
('E055', 'Nombre55', 'Ape1-55', 'Ape2-55', '33333355Q', 'dia', 4500, '600100055', DATE '2022-03-15', 'e055@vet.com', DATE '1990-03-15', 'R28', 'P27', 64, 'Avenida', 'Cuarta'),
('E056', 'Nombre56', 'Ape1-56', 'Ape2-56', '33333356R', 'noche', 4600, '600100056', DATE '2022-03-16', 'e056@vet.com', DATE '1990-03-16', 'R28', 'P28', 65, 'Calle', 'Quinta'),
('E057', 'Nombre57', 'Ape1-57', 'Ape2-57', '33333357S', 'dia', 4700, '600100057', DATE '2022-03-17', 'e057@vet.com', DATE '1990-03-17', 'R29', 'P28', 66, 'Avenida', 'Sexta'),
('E058', 'Nombre58', 'Ape1-58', 'Ape2-58', '33333358T', 'noche', 4800, '600100058', DATE '2022-03-18', 'e058@vet.com', DATE '1990-03-18', 'R29', 'P29', 67, 'Calle', 'Séptima'),
('E059', 'Nombre59', 'Ape1-59', 'Ape2-59', '33333359U', 'dia', 4900, '600100059', DATE '2022-03-19', 'e059@vet.com', DATE '1990-03-19', 'R30', 'P29', 68, 'Avenida', 'Octava'),
('E060', 'Nombre60', 'Ape1-60', 'Ape2-60', '33333360V', 'noche', 5000, '600100060', DATE '2022-03-20', 'e060@vet.com', DATE '1990-03-20', 'R30', 'P30', 69, 'Calle', 'Novena'),

('E061', 'Nombre61', 'Ape1-61', 'Ape2-61', '44444461A', 'dia', 5100, '600100061', DATE '2022-04-01', 'e061@vet.com', DATE '1990-04-01', 'R31', 'P31', 70, 'Avenida', 'Décima'),
('E062', 'Nombre62', 'Ape1-62', 'Ape2-62', '44444462B', 'noche', 5200, '600100062', DATE '2022-04-02', 'e062@vet.com', DATE '1990-04-02', 'R31', 'P31', 71, 'Calle', 'Primera'),
('E063', 'Nombre63', 'Ape1-63', 'Ape2-63', '44444463C', 'dia', 5300, '600100063', DATE '2022-04-03', 'e063@vet.com', DATE '1990-04-03', 'R32', 'P31', 72, 'Avenida', 'Secundaria'),
('E064', 'Nombre64', 'Ape1-64', 'Ape2-64', '44444464D', 'noche', 5400, '600100064', DATE '2022-04-04', 'e064@vet.com', DATE '1990-04-04', 'R32', 'P32', 73, 'Calle', 'Tercera'),
('E065', 'Nombre65', 'Ape1-65', 'Ape2-65', '44444465E', 'dia', 5500, '600100065', DATE '2022-04-05', 'e065@vet.com', DATE '1990-04-05', 'R33', 'P32', 74, 'Avenida', 'Cuarta'),
('E066', 'Nombre66', 'Ape1-66', 'Ape2-66', '44444466F', 'noche', 5600, '600100066', DATE '2022-04-06', 'e066@vet.com', DATE '1990-04-06', 'R33', 'P33', 75, 'Calle', 'Quinta'),
('E067', 'Nombre67', 'Ape1-67', 'Ape2-67', '44444467G', 'dia', 5700, '600100067', DATE '2022-04-07', 'e067@vet.com', DATE '1990-04-07', 'R34', 'P33', 76, 'Avenida', 'Sexta'),
('E068', 'Nombre68', 'Ape1-68', 'Ape2-68', '44444468H', 'noche', 5800, '600100068', DATE '2022-04-08', 'e068@vet.com', DATE '1990-04-08', 'R34', 'P34', 77, 'Calle', 'Séptima'),
('E069', 'Nombre69', 'Ape1-69', 'Ape2-69', '44444469J', 'dia', 5900, '600100069', DATE '2022-04-09', 'e069@vet.com', DATE '1990-04-09', 'R35', 'P34', 78, 'Avenida', 'Octava'),
('E070', 'Nombre70', 'Ape1-70', 'Ape2-70', '44444470K', 'noche', 6000, '600100070', DATE '2022-04-10', 'e070@vet.com', DATE '1990-04-10', 'R35', 'P35', 79, 'Calle', 'Novena'),

('E071', 'Nombre71', 'Ape1-71', 'Ape2-71', '44444471L', 'dia', 6100, '600100071', DATE '2022-04-11', 'e071@vet.com', DATE '1990-04-11', 'R36', 'P35', 80, 'Avenida', 'Décima'),
('E072', 'Nombre72', 'Ape1-72', 'Ape2-72', '44444472M', 'noche', 6200, '600100072', DATE '2022-04-12', 'e072@vet.com', DATE '1990-04-12', 'R36', 'P36', 81, 'Calle', 'Primera'),
('E073', 'Nombre73', 'Ape1-73', 'Ape2-73', '44444473N', 'dia', 6300, '600100073', DATE '2022-04-13', 'e073@vet.com', DATE '1990-04-13', 'R37', 'P36', 82, 'Avenida', 'Secundaria'),
('E074', 'Nombre74', 'Ape1-74', 'Ape2-74', '44444474P', 'noche', 6400, '600100074', DATE '2022-04-14', 'e074@vet.com', DATE '1990-04-14', 'R37', 'P37', 83, 'Calle', 'Tercera'),
('E075', 'Nombre75', 'Ape1-75', 'Ape2-75', '44444475Q', 'dia', 6500, '600100075', DATE '2022-04-15', 'e075@vet.com', DATE '1990-04-15', 'R38', 'P37', 84, 'Avenida', 'Cuarta'),
('E076', 'Nombre76', 'Ape1-76', 'Ape2-76', '44444476R', 'noche', 6600, '600100076', DATE '2022-04-16', 'e076@vet.com', DATE '1990-04-16', 'R38', 'P38', 85, 'Calle', 'Quinta'),
('E077', 'Nombre77', 'Ape1-77', 'Ape2-77', '44444477S', 'dia', 6700, '600100077', DATE '2022-04-17', 'e077@vet.com', DATE '1990-04-17', 'R39', 'P38', 86, 'Avenida', 'Sexta'),
('E078', 'Nombre78', 'Ape1-78', 'Ape2-78', '44444478T', 'noche', 6800, '600100078', DATE '2022-04-18', 'e078@vet.com', DATE '1990-04-18', 'R39', 'P39', 87, 'Calle', 'Séptima'),
('E079', 'Nombre79', 'Ape1-79', 'Ape2-79', '44444479U', 'dia', 6900, '600100079', DATE '2022-04-19', 'e079@vet.com', DATE '1990-04-19', 'R40', 'P39', 88, 'Avenida', 'Octava'),
('E080', 'Nombre80', 'Ape1-80', 'Ape2-80', '44444480V', 'noche', 7000, '600100080', DATE '2022-04-20', 'e080@vet.com', DATE '1990-04-20', 'R40', 'P40', 89, 'Calle', 'Novena');


-- Secciones (20)
INSERT INTO Seccion (idSeccion, proposito, idDirector)
VALUES
('S001', 'Seccion 1 - Cirugía', 'E001'),
('S002', 'Seccion 2 - Hospitalizacion', 'E002'),
('S003', 'Seccion 3 - Tratamiento', 'E003'),
('S004', 'Seccion 4 - Urgencias', 'E004'),
('S005', 'Seccion 5 - Virtual', 'E005'),
('S006', 'Seccion 6 - Cirugía', 'E006'),
('S007', 'Seccion 7 - Hospitalizacion', 'E007'),
('S008', 'Seccion 8 - Tratamiento', 'E008'),
('S009', 'Seccion 9 - Urgencias', 'E009'),
('S010', 'Seccion 10 - Virtual', 'E010'),
('S011', 'Seccion 11 - Cirugía', 'E011'),
('S012', 'Seccion 12 - Hospitalizacion', 'E012'),
('S013', 'Seccion 13 - Tratamiento', 'E013'),
('S014', 'Seccion 14 - Urgencias', 'E014'),
('S015', 'Seccion 15 - Virtual', 'E015'),
('S016', 'Seccion 16 - Cirugía', 'E016'),
('S017', 'Seccion 17 - Hospitalizacion', 'E017'),
('S018', 'Seccion 18 - Tratamiento', 'E018'),
('S019', 'Seccion 19 - Urgencias', 'E019'),
('S020', 'Seccion 20 - Virtual', 'E020');


-- Salas (80) - Bloques de 4 para cada Seccion
-- S001 -> SAL001..SAL004
INSERT INTO Sala (idSala, idSeccion, fecha_inauguracion, estado_ocupacion)
VALUES
('SAL001', 'S001', DATE '2020-01-01', 'libre'),
('SAL002', 'S001', DATE '2020-01-02', 'ocupada'),
('SAL003', 'S001', DATE '2020-01-03', 'programada'),
('SAL004', 'S001', DATE '2020-01-04', 'libre'),

-- S002 -> SAL005..SAL008
('SAL005', 'S002', DATE '2020-01-05', 'ocupada'),
('SAL006', 'S002', DATE '2020-01-06', 'programada'),
('SAL007', 'S002', DATE '2020-01-07', 'libre'),
('SAL008', 'S002', DATE '2020-01-08', 'libre'),

-- S003 -> SAL009..SAL012
('SAL009', 'S003', DATE '2020-01-09', 'ocupada'),
('SAL010', 'S003', DATE '2020-01-10', 'ocupada'),
('SAL011', 'S003', DATE '2020-01-11', 'libre'),
('SAL012', 'S003', DATE '2020-01-12', 'programada'),

-- S004 -> SAL013..SAL016
('SAL013', 'S004', DATE '2020-01-13', 'libre'),
('SAL014', 'S004', DATE '2020-01-14', 'ocupada'),
('SAL015', 'S004', DATE '2020-01-15', 'ocupada'),
('SAL016', 'S004', DATE '2020-01-16', 'programada'),

-- S005 -> SAL017..SAL020
('SAL017', 'S005', DATE '2020-01-17', 'libre'),
('SAL018', 'S005', DATE '2020-01-18', 'ocupada'),
('SAL019', 'S005', DATE '2020-01-19', 'programada'),
('SAL020', 'S005', DATE '2020-01-20', 'ocupada'),

-- S006 -> SAL021..SAL024
('SAL021', 'S006', DATE '2020-01-21', 'ocupada'),
('SAL022', 'S006', DATE '2020-01-22', 'libre'),
('SAL023', 'S006', DATE '2020-01-23', 'programada'),
('SAL024', 'S006', DATE '2020-01-24', 'ocupada'),

-- S007 -> SAL025..SAL028
('SAL025', 'S007', DATE '2020-01-25', 'ocupada'),
('SAL026', 'S007', DATE '2020-01-26', 'libre'),
('SAL027', 'S007', DATE '2020-01-27', 'programada'),
('SAL028', 'S007', DATE '2020-01-28', 'ocupada'),

-- S008 -> SAL029..SAL032
('SAL029', 'S008', DATE '2020-01-29', 'libre'),
('SAL030', 'S008', DATE '2020-01-30', 'ocupada'),
('SAL031', 'S008', DATE '2020-01-31', 'programada'),
('SAL032', 'S008', DATE '2020-02-01', 'ocupada'),

-- S009 -> SAL033..SAL036
('SAL033', 'S009', DATE '2020-02-02', 'libre'),
('SAL034', 'S009', DATE '2020-02-03', 'ocupada'),
('SAL035', 'S009', DATE '2020-02-04', 'ocupada'),
('SAL036', 'S009', DATE '2020-02-05', 'programada'),

-- S010 -> SAL037..SAL040
('SAL037', 'S010', DATE '2020-02-06', 'libre'),
('SAL038', 'S010', DATE '2020-02-07', 'ocupada'),
('SAL039', 'S010', DATE '2020-02-08', 'programada'),
('SAL040', 'S010', DATE '2020-02-09', 'ocupada'),

-- S011 -> SAL041..SAL044
('SAL041', 'S011', DATE '2020-02-10', 'libre'),
('SAL042', 'S011', DATE '2020-02-11', 'ocupada'),
('SAL043', 'S011', DATE '2020-02-12', 'programada'),
('SAL044', 'S011', DATE '2020-02-13', 'ocupada'),

-- S012 -> SAL045..SAL048
('SAL045', 'S012', DATE '2020-02-14', 'libre'),
('SAL046', 'S012', DATE '2020-02-15', 'ocupada'),
('SAL047', 'S012', DATE '2020-02-16', 'programada'),
('SAL048', 'S012', DATE '2020-02-17', 'ocupada'),

-- S013 -> SAL049..SAL052
('SAL049', 'S013', DATE '2020-02-18', 'libre'),
('SAL050', 'S013', DATE '2020-02-19', 'ocupada'),
('SAL051', 'S013', DATE '2020-02-20', 'programada'),
('SAL052', 'S013', DATE '2020-02-21', 'ocupada'),

-- S014 -> SAL053..SAL056
('SAL053', 'S014', DATE '2020-02-22', 'libre'),
('SAL054', 'S014', DATE '2020-02-23', 'ocupada'),
('SAL055', 'S014', DATE '2020-02-24', 'ocupada'),
('SAL056', 'S014', DATE '2020-02-25', 'programada'),

-- S015 -> SAL057..SAL060
('SAL057', 'S015', DATE '2020-02-26', 'libre'),
('SAL058', 'S015', DATE '2020-02-27', 'ocupada'),
('SAL059', 'S015', DATE '2020-02-28', 'programada'),
('SAL060', 'S015', DATE '2020-02-29', 'ocupada'),

-- S016 -> SAL061..SAL064
('SAL061', 'S016', DATE '2020-03-01', 'ocupada'),
('SAL062', 'S016', DATE '2020-03-02', 'libre'),
('SAL063', 'S016', DATE '2020-03-03', 'programada'),
('SAL064', 'S016', DATE '2020-03-04', 'ocupada'),

-- S017 -> SAL065..SAL068
('SAL065', 'S017', DATE '2020-03-05', 'ocupada'),
('SAL066', 'S017', DATE '2020-03-06', 'libre'),
('SAL067', 'S017', DATE '2020-03-07', 'programada'),
('SAL068', 'S017', DATE '2020-03-08', 'ocupada'),

-- S018 -> SAL069..SAL072
('SAL069', 'S018', DATE '2020-03-09', 'libre'),
('SAL070', 'S018', DATE '2020-03-10', 'ocupada'),
('SAL071', 'S018', DATE '2020-03-11', 'programada'),
('SAL072', 'S018', DATE '2020-03-12', 'ocupada'),

-- S019 -> SAL073..SAL076
('SAL073', 'S019', DATE '2020-03-13', 'libre'),
('SAL074', 'S019', DATE '2020-03-14', 'ocupada'),
('SAL075', 'S019', DATE '2020-03-15', 'ocupada'),
('SAL076', 'S019', DATE '2020-03-16', 'programada'),

-- S020 -> SAL077..SAL080
('SAL077', 'S020', DATE '2020-03-17', 'libre'),
('SAL078', 'S020', DATE '2020-03-18', 'ocupada'),
('SAL079', 'S020', DATE '2020-03-19', 'programada'),
('SAL080', 'S020', DATE '2020-03-20', 'ocupada');




-- Sala_Cirugia (20) --> SAL001..SAL020
INSERT INTO Sala_Cirugia (idSalaCirugia, idSala)
VALUES
('SC001','SAL001'),
('SC002','SAL002'),
('SC003','SAL003'),
('SC004','SAL004'),
('SC005','SAL005'),
('SC006','SAL006'),
('SC007','SAL007'),
('SC008','SAL008'),
('SC009','SAL009'),
('SC010','SAL010'),
('SC011','SAL011'),
('SC012','SAL012'),
('SC013','SAL013'),
('SC014','SAL014'),
('SC015','SAL015'),
('SC016','SAL016'),
('SC017','SAL017'),
('SC018','SAL018'),
('SC019','SAL019'),
('SC020','SAL020');

-- Sala_Tratamiento (20) --> SAL021..SAL040
INSERT INTO Sala_Tratamiento (idSalaTratamiento, idSala)
VALUES
('ST001','SAL021'),
('ST002','SAL022'),
('ST003','SAL023'),
('ST004','SAL024'),
('ST005','SAL025'),
('ST006','SAL026'),
('ST007','SAL027'),
('ST008','SAL028'),
('ST009','SAL029'),
('ST010','SAL030'),
('ST011','SAL031'),
('ST012','SAL032'),
('ST013','SAL033'),
('ST014','SAL034'),
('ST015','SAL035'),
('ST016','SAL036'),
('ST017','SAL037'),
('ST018','SAL038'),
('ST019','SAL039'),
('ST020','SAL040');

-- Sala_Virtual (20) --> SAL041..SAL060
INSERT INTO Sala_Virtual (idSalaVirtual, idSala)
VALUES
('SV001','SAL041'),
('SV002','SAL042'),
('SV003','SAL043'),
('SV004','SAL044'),
('SV005','SAL045'),
('SV006','SAL046'),
('SV007','SAL047'),
('SV008','SAL048'),
('SV009','SAL049'),
('SV010','SAL050'),
('SV011','SAL051'),
('SV012','SAL052'),
('SV013','SAL053'),
('SV014','SAL054'),
('SV015','SAL055'),
('SV016','SAL056'),
('SV017','SAL057'),
('SV018','SAL058'),
('SV019','SAL059'),
('SV020','SAL060');

-- Sala_Hospitalizacion (20) --> SAL061..SAL080
INSERT INTO Sala_Hospitalizacion (idSalaHospitalizacion, idSala, coste_base_diario, coste_extra, duracion_esperada)
VALUES
('SH001','SAL061', 120.50, 30.75, 5),
('SH002','SAL062', 130.00, 25.00, 3),
('SH003','SAL063', 110.00, 35.00, 7),
('SH004','SAL064', 145.00, 20.00, 2),
('SH005','SAL065', 160.00, 40.00, 6),
('SH006','SAL066', 100.00, 10.00, 1),
('SH007','SAL067', 180.00, 45.50, 8),
('SH008','SAL068', 130.00, 15.00, 3),
('SH009','SAL069', 190.00, 60.00, 10),
('SH010','SAL070', 175.00, 50.00, 9),
('SH011','SAL071', 125.00, 20.00, 4),
('SH012','SAL072', 140.00, 35.00, 5),
('SH013','SAL073', 155.00, 45.00, 6),
('SH014','SAL074', 165.00, 55.00, 7),
('SH015','SAL075', 200.00, 60.00, 8),
('SH016','SAL076', 220.00, 70.00, 9),
('SH017','SAL077', 140.00, 15.00, 2),
('SH018','SAL078', 150.00, 25.00, 3),
('SH019','SAL079', 160.00, 35.00, 5),
('SH020','SAL080', 175.50, 40.00, 6);



-- Veterinario (20) -> Empleados E021..E040, referencing SAL021..SAL040 de forma 1-1
INSERT INTO Veterinario (idVeterinario, idEmpleado, idSala)
VALUES
('V001','E021','SAL021'),
('V002','E022','SAL022'),
('V003','E023','SAL023'),
('V004','E024','SAL024'),
('V005','E025','SAL025'),
('V006','E026','SAL026'),
('V007','E027','SAL027'),
('V008','E028','SAL028'),
('V009','E029','SAL029'),
('V010','E030','SAL030'),
('V011','E031','SAL031'),
('V012','E032','SAL032'),
('V013','E033','SAL033'),
('V014','E034','SAL034'),
('V015','E035','SAL035'),
('V016','E036','SAL036'),
('V017','E037','SAL037'),
('V018','E038','SAL038'),
('V019','E039','SAL039'),
('V020','E040','SAL040');

-- Cirujano (20) -> Empleados E041..E060
INSERT INTO Cirujano (idCirujano, idEmpleado, institucion, anios_carrera)
VALUES
('CIR001','E041','Inst1', 5),
('CIR002','E042','Inst1', 7),
('CIR003','E043','Inst2', 10),
('CIR004','E044','Inst2', 2),
('CIR005','E045','Inst3', 6),
('CIR006','E046','Inst3', 8),
('CIR007','E047','Inst4', 3),
('CIR008','E048','Inst4', 12),
('CIR009','E049','Inst5', 9),
('CIR010','E050','Inst5', 11),
('CIR011','E051','Inst6', 4),
('CIR012','E052','Inst6', 6),
('CIR013','E053','Inst7', 7),
('CIR014','E054','Inst7', 9),
('CIR015','E055','Inst8', 5),
('CIR016','E056','Inst8', 13),
('CIR017','E057','Inst9', 8),
('CIR018','E058','Inst9', 4),
('CIR019','E059','Inst10', 14),
('CIR020','E060','Inst10', 10);

-- Administrador (20) -> Empleados E061..E080
INSERT INTO Administrador (idAdministrador, idEmpleado)
VALUES
('AD001','E061'),
('AD002','E062'),
('AD003','E063'),
('AD004','E064'),
('AD005','E065'),
('AD006','E066'),
('AD007','E067'),
('AD008','E068'),
('AD009','E069'),
('AD010','E070'),
('AD011','E071'),
('AD012','E072'),
('AD013','E073'),
('AD014','E074'),
('AD015','E075'),
('AD016','E076'),
('AD017','E077'),
('AD018','E078'),
('AD019','E079'),
('AD020','E080');




INSERT INTO Duenio (idDuenio, nombre, apellido1, apellido2, fecha_nacimiento, fecha_alta, correo, telefono, region, pais, codigo_postal, nombreCalle, tipo_via, numero)
VALUES
('D001','DNombre1','DApe1-1','DApe2-1',DATE '1980-01-01',DATE '2020-01-01','d001@mail.com','700100001','RegD1','PaisD1',28001,'Calle D1','Calle',10),
('D002','DNombre2','DApe1-2','DApe2-2',DATE '1982-02-02',DATE '2020-02-02','d002@mail.com','700100002','RegD2','PaisD2',28002,'Calle D2','Avenida',11),
('D003','DNombre3','DApe1-3','DApe2-3',DATE '1984-03-03',DATE '2020-03-03','d003@mail.com','700100003','RegD3','PaisD3',28003,'Calle D3','Calle',12),
('D004','DNombre4','DApe1-4','DApe2-4',DATE '1986-04-04',DATE '2020-04-04','d004@mail.com','700100004','RegD4','PaisD4',28004,'Calle D4','Avenida',13),
('D005','DNombre5','DApe1-5','DApe2-5',DATE '1988-05-05',DATE '2020-05-05','d005@mail.com','700100005','RegD5','PaisD5',28005,'Calle D5','Calle',14),
('D006','DNombre6','DApe1-6','DApe2-6',DATE '1990-06-06',DATE '2020-06-06','d006@mail.com','700100006','RegD6','PaisD6',28006,'Calle D6','Avenida',15),
('D007','DNombre7','DApe1-7','DApe2-7',DATE '1992-07-07',DATE '2020-07-07','d007@mail.com','700100007','RegD7','PaisD7',28007,'Calle D7','Calle',16),
('D008','DNombre8','DApe1-8','DApe2-8',DATE '1994-08-08',DATE '2020-08-08','d008@mail.com','700100008','RegD8','PaisD8',28008,'Calle D8','Avenida',17),
('D009','DNombre9','DApe1-9','DApe2-9',DATE '1996-09-09',DATE '2020-09-09','d009@mail.com','700100009','RegD9','PaisD9',28009,'Calle D9','Calle',18),
('D010','DNombre10','DApe1-10','DApe2-10',DATE '1998-10-10',DATE '2020-10-10','d010@mail.com','700100010','RegD10','PaisD10',28010,'Calle D10','Avenida',19),

('D011','DNombre11','DApe1-11','DApe2-11',DATE '1981-11-11',DATE '2020-11-11','d011@mail.com','700100011','RegD11','PaisD11',28011,'Calle D11','Calle',20),
('D012','DNombre12','DApe1-12','DApe2-12',DATE '1983-12-12',DATE '2020-12-12','d012@mail.com','700100012','RegD12','PaisD12',28012,'Calle D12','Avenida',21),
('D013','DNombre13','DApe1-13','DApe2-13',DATE '1985-01-01',DATE '2021-01-01','d013@mail.com','700100013','RegD13','PaisD13',28013,'Calle D13','Calle',22),
('D014','DNombre14','DApe1-14','DApe2-14',DATE '1987-02-02',DATE '2021-02-02','d014@mail.com','700100014','RegD14','PaisD14',28014,'Calle D14','Avenida',23),
('D015','DNombre15','DApe1-15','DApe2-15',DATE '1989-03-03',DATE '2021-03-03','d015@mail.com','700100015','RegD15','PaisD15',28015,'Calle D15','Calle',24),
('D016','DNombre16','DApe1-16','DApe2-16',DATE '1991-04-04',DATE '2021-04-04','d016@mail.com','700100016','RegD16','PaisD16',28016,'Calle D16','Avenida',25),
('D017','DNombre17','DApe1-17','DApe2-17',DATE '1993-05-05',DATE '2021-05-05','d017@mail.com','700100017','RegD17','PaisD17',28017,'Calle D17','Calle',26),
('D018','DNombre18','DApe1-18','DApe2-18',DATE '1995-06-06',DATE '2021-06-06','d018@mail.com','700100018','RegD18','PaisD18',28018,'Calle D18','Avenida',27),
('D019','DNombre19','DApe1-19','DApe2-19',DATE '1997-07-07',DATE '2021-07-07','d019@mail.com','700100019','RegD19','PaisD19',28019,'Calle D19','Calle',28),
('D020','DNombre20','DApe1-20','DApe2-20',DATE '1999-08-08',DATE '2021-08-08','d020@mail.com','700100020','RegD20','PaisD20',28020,'Calle D20','Avenida',29);



INSERT INTO Tipo_Animal (idTipoAnimal, nombre_corto, nombre)
VALUES
('T001','PER','Perro'),
('T002','GAT','Gato'),
('T003','CAB','Caballo'),
('T004','CER','Cerdo'),
('T005','TIG','Tigre'),
('T006','RAT','Rata'),
('T007','HAM','Hamster'),
('T008','PAP','Papagayo'),
('T009','LOR','Loro'),
('T010','PEZ','Pez'),
('T011','COB','Cobaya'),
('T012','CON','Conejo'),
('T013','TOR','Toro'),
('T014','GAL','Gallina'),
('T015','PAT','Pato'),
('T016','CAB2','Cabra'),
('T017','OVE','Oveja'),
('T018','HOR','Huron'),
('T019','IGU','Iguana'),
('T020','SER','Serpiente');



INSERT INTO Animal
  (idAnimal, nombre, fecha_nacimiento, raza, peso, altura, largo, ancho, idDuenio, idTipoAnimal)
VALUES
('A001','Mascota1',DATE '2020-01-01','Raza1',10.5,30.0,60.0,20.0,'D001','T001'),
('A002','Mascota2',DATE '2020-02-02','Raza2',5.0,25.0,40.0,15.0,'D002','T002'),
('A003','Mascota3',DATE '2020-03-03','Raza3',200.0,130.0,250.0,90.0,'D003','T003'),
('A004','Mascota4',DATE '2020-04-04','Raza4',50.0,60.0,100.0,40.0,'D004','T004'),
('A005','Mascota5',DATE '2020-05-05','Raza5',80.0,80.0,120.0,50.0,'D005','T005'),
('A006','Mascota6',DATE '2020-06-06','Raza6',0.2,5.0,10.0,3.0,'D006','T006'),
('A007','Mascota7',DATE '2020-07-07','Raza7',0.8,8.0,15.0,5.0,'D007','T007'),
('A008','Mascota8',DATE '2020-08-08','Raza8',1.0,20.0,30.0,10.0,'D008','T008'),
('A009','Mascota9',DATE '2020-09-09','Raza9',1.5,25.0,35.0,12.0,'D009','T009'),
('A010','Mascota10',DATE '2020-10-10','Raza10',0.3,5.0,8.0,2.0,'D010','T010'),

('A011','Mascota11',DATE '2020-11-11','Raza11',0.8,10.0,18.0,6.0,'D011','T011'),
('A012','Mascota12',DATE '2020-12-12','Raza12',1.2,25.0,35.0,10.0,'D012','T012'),
('A013','Mascota13',DATE '2021-01-01','Raza13',300.0,150.0,300.0,100.0,'D013','T013'),
('A014','Mascota14',DATE '2021-02-02','Raza14',2.5,15.0,25.0,8.0,'D014','T014'),
('A015','Mascota15',DATE '2021-03-03','Raza15',3.0,20.0,40.0,10.0,'D015','T015'),
('A016','Mascota16',DATE '2021-04-04','Raza16',40.0,70.0,100.0,35.0,'D016','T016'),
('A017','Mascota17',DATE '2021-05-05','Raza17',35.0,60.0,90.0,30.0,'D017','T017'),
('A018','Mascota18',DATE '2021-06-06','Raza18',0.7,12.0,22.0,7.0,'D018','T018'),
('A019','Mascota19',DATE '2021-07-07','Raza19',2.0,30.0,50.0,15.0,'D019','T019'),
('A020','Mascota20',DATE '2021-08-08','Raza20',1.2,10.0,15.0,5.0,'D020','T020');



INSERT INTO Condiciones_Animal (idCondiciones, idAnimal, descripcion, gravedad)
VALUES
('CA001','A001','Condición leve 1',3),
('CA002','A002','Condición leve 2',2),
('CA003','A003','Condición media 3',5),
('CA004','A004','Condición severa 4',8),
('CA005','A005','Condición leve 5',2),
('CA006','A006','Condición media 6',6),
('CA007','A007','Condición severa 7',9),
('CA008','A008','Condición leve 8',3),
('CA009','A009','Condición media 9',4),
('CA010','A010','Condición severa 10',10),
('CA011','A011','Condición leve 11',1),
('CA012','A012','Condición media 12',5),
('CA013','A013','Condición severa 13',8),
('CA014','A014','Condición media 14',5),
('CA015','A015','Condición leve 15',2),
('CA016','A016','Condición media 16',4),
('CA017','A017','Condición severa 17',9),
('CA018','A018','Condición leve 18',3),
('CA019','A019','Condición media 19',4),
('CA020','A020','Condición leve 20',2);




INSERT INTO Proveedor (idProveedor, nombre, correo, telefono, telefono_urgencias, region, pais, codigo_postal, numero, tipo_via, nombre_calle)
VALUES
('PR001','Prov1','prov1@mail.com','900100001','900200001','RegP1','PaisP1',30001,10,'Calle','Direccion1'),
('PR002','Prov2','prov2@mail.com','900100002','900200002','RegP2','PaisP2',30002,11,'Avenida','Direccion2'),
('PR003','Prov3','prov3@mail.com','900100003','900200003','RegP3','PaisP3',30003,12,'Calle','Direccion3'),
('PR004','Prov4','prov4@mail.com','900100004','900200004','RegP4','PaisP4',30004,13,'Avenida','Direccion4'),
('PR005','Prov5','prov5@mail.com','900100005','900200005','RegP5','PaisP5',30005,14,'Calle','Direccion5'),
('PR006','Prov6','prov6@mail.com','900100006','900200006','RegP6','PaisP6',30006,15,'Avenida','Direccion6'),
('PR007','Prov7','prov7@mail.com','900100007','900200007','RegP7','PaisP7',30007,16,'Calle','Direccion7'),
('PR008','Prov8','prov8@mail.com','900100008','900200008','RegP8','PaisP8',30008,17,'Avenida','Direccion8'),
('PR009','Prov9','prov9@mail.com','900100009','900200009','RegP9','PaisP9',30009,18,'Calle','Direccion9'),
('PR010','Prov10','prov10@mail.com','900100010','900200010','RegP10','PaisP10',30010,19,'Avenida','Direccion10'),

('PR011','Prov11','prov11@mail.com','900100011','900200011','RegP11','PaisP11',30011,20,'Calle','Direccion11'),
('PR012','Prov12','prov12@mail.com','900100012','900200012','RegP12','PaisP12',30012,21,'Avenida','Direccion12'),
('PR013','Prov13','prov13@mail.com','900100013','900200013','RegP13','PaisP13',30013,22,'Calle','Direccion13'),
('PR014','Prov14','prov14@mail.com','900100014','900200014','RegP14','PaisP14',30014,23,'Avenida','Direccion14'),
('PR015','Prov15','prov15@mail.com','900100015','900200015','RegP15','PaisP15',30015,24,'Calle','Direccion15'),
('PR016','Prov16','prov16@mail.com','900100016','900200016','RegP16','PaisP16',30016,25,'Avenida','Direccion16'),
('PR017','Prov17','prov17@mail.com','900100017','900200017','RegP17','PaisP17',30017,26,'Calle','Direccion17'),
('PR018','Prov18','prov18@mail.com','900100018','900200018','RegP18','PaisP18',30018,27,'Avenida','Direccion18'),
('PR019','Prov19','prov19@mail.com','900100019','900200019','RegP19','PaisP19',30019,28,'Calle','Direccion19'),
('PR020','Prov20','prov20@mail.com','900100020','900200020','RegP20','PaisP20',30020,29,'Avenida','Direccion20');




INSERT INTO Medicamento (idMedicamento, nombre, unidades_caja, costo)
VALUES
('M001','Medic1',10,50.00),
('M002','Medic2',20,75.00),
('M003','Medic3',15,32.50),
('M004','Medic4',25,100.00),
('M005','Medic5',30,120.00),
('M006','Medic6',40,80.00),
('M007','Medic7',50,95.00),
('M008','Medic8',60,60.00),
('M009','Medic9',10,45.00),
('M010','Medic10',20,150.00),
('M011','Medic11',10,30.00),
('M012','Medic12',15,55.00),
('M013','Medic13',25,90.00),
('M014','Medic14',30,110.00),
('M015','Medic15',35,200.00),
('M016','Medic16',40,35.00),
('M017','Medic17',45,75.00),
('M018','Medic18',50,60.00),
('M019','Medic19',55,85.00),
('M020','Medic20',60,99.99);



INSERT INTO Tipo_Medicamento (idTipoMedicamento, idMedicamento, tipo)
VALUES
('TM001','M001','Inyectable'),
('TM002','M002','Polvo'),
('TM003','M003','Jarabe'),
('TM004','M004','Comprimido'),
('TM005','M005','Cápsula'),
('TM006','M006','Bálsamo'),
('TM007','M007','Inhalador'),
('TM008','M008','Gotas'),
('TM009','M009','Crema'),
('TM010','M010','Suspensión'),
('TM011','M011','Líquido'),
('TM012','M012','Inyectable'),
('TM013','M013','Comprimido'),
('TM014','M014','Polvo'),
('TM015','M015','Cápsula'),
('TM016','M016','Gotas'),
('TM017','M017','Bálsamo'),
('TM018','M018','Comprimido'),
('TM019','M019','Jarabe'),
('TM020','M020','Inyectable');



INSERT INTO Cita (idCita, fecha, motivo, estado, idAnimal, idAdministrador)
VALUES
('CIT001',DATE '2022-05-01','Chequeo general','programada','A001','AD001'),
('CIT002',DATE '2022-05-02','Vacunación','completada','A002','AD002'),
('CIT003',DATE '2022-05-03','Herida leve','programada','A003','AD003'),
('CIT004',DATE '2022-05-04','Control peso','cancelada','A004','AD004'),
('CIT005',DATE '2022-05-05','Problema estomacal','completada','A005','AD005'),
('CIT006',DATE '2022-05-06','Chequeo general','programada','A006','AD006'),
('CIT007',DATE '2022-05-07','Vacunación','cancelada','A007','AD007'),
('CIT008',DATE '2022-05-08','Herida leve','programada','A008','AD008'),
('CIT009',DATE '2022-05-09','Problema respiratorio','completada','A009','AD009'),
('CIT010',DATE '2022-05-10','Control rutina','programada','A010','AD010'),

('CIT011',DATE '2022-05-11','Chequeo general','programada','A011','AD011'),
('CIT012',DATE '2022-05-12','Vacunación','completada','A012','AD012'),
('CIT013',DATE '2022-05-13','Herida leve','programada','A013','AD013'),
('CIT014',DATE '2022-05-14','Control peso','cancelada','A014','AD014'),
('CIT015',DATE '2022-05-15','Problema estomacal','completada','A015','AD015'),
('CIT016',DATE '2022-05-16','Chequeo general','programada','A016','AD016'),
('CIT017',DATE '2022-05-17','Vacunación','cancelada','A017','AD017'),
('CIT018',DATE '2022-05-18','Herida leve','programada','A018','AD018'),
('CIT019',DATE '2022-05-19','Problema respiratorio','completada','A019','AD019'),
('CIT020',DATE '2022-05-20','Control rutina','programada','A020','AD020'),

('CIT021',DATE '2022-06-01','Chequeo general','programada','A001','AD001'),
('CIT022',DATE '2022-06-02','Vacunación','completada','A002','AD002'),
('CIT023',DATE '2022-06-03','Herida leve','programada','A003','AD003'),
('CIT024',DATE '2022-06-04','Control peso','cancelada','A004','AD004'),
('CIT025',DATE '2022-06-05','Problema estomacal','completada','A005','AD005'),
('CIT026',DATE '2022-06-06','Chequeo general','programada','A006','AD006'),
('CIT027',DATE '2022-06-07','Vacunación','cancelada','A007','AD007'),
('CIT028',DATE '2022-06-08','Herida leve','programada','A008','AD008'),
('CIT029',DATE '2022-06-09','Problema respiratorio','completada','A009','AD009'),
('CIT030',DATE '2022-06-10','Control rutina','programada','A010','AD010'),

('CIT031',DATE '2022-06-11','Chequeo general','programada','A011','AD011'),
('CIT032',DATE '2022-06-12','Vacunación','completada','A012','AD012'),
('CIT033',DATE '2022-06-13','Herida leve','programada','A013','AD013'),
('CIT034',DATE '2022-06-14','Control peso','cancelada','A014','AD014'),
('CIT035',DATE '2022-06-15','Problema estomacal','completada','A015','AD015'),
('CIT036',DATE '2022-06-16','Chequeo general','programada','A016','AD016'),
('CIT037',DATE '2022-06-17','Vacunación','cancelada','A017','AD017'),
('CIT038',DATE '2022-06-18','Herida leve','programada','A018','AD018'),
('CIT039',DATE '2022-06-19','Problema respiratorio','completada','A019','AD019'),
('CIT040',DATE '2022-06-20','Control rutina','programada','A020','AD020');




INSERT INTO Consulta (idConsulta, idCita, fecha, idConsultaPadre)
VALUES
('CONS001','CIT001',DATE '2022-05-01',NULL),
('CONS002','CIT002',DATE '2022-05-02',NULL),
('CONS003','CIT003',DATE '2022-05-03',NULL),
('CONS004','CIT004',DATE '2022-05-04',NULL),
('CONS005','CIT005',DATE '2022-05-05',NULL),
('CONS006','CIT006',DATE '2022-05-06',NULL),
('CONS007','CIT007',DATE '2022-05-07',NULL),
('CONS008','CIT008',DATE '2022-05-08',NULL),
('CONS009','CIT009',DATE '2022-05-09',NULL),
('CONS010','CIT010',DATE '2022-05-10',NULL),

('CONS011','CIT011',DATE '2022-05-11',NULL),
('CONS012','CIT012',DATE '2022-05-12',NULL),
('CONS013','CIT013',DATE '2022-05-13',NULL),
('CONS014','CIT014',DATE '2022-05-14',NULL),
('CONS015','CIT015',DATE '2022-05-15',NULL),
('CONS016','CIT016',DATE '2022-05-16',NULL),
('CONS017','CIT017',DATE '2022-05-17',NULL),
('CONS018','CIT018',DATE '2022-05-18',NULL),
('CONS019','CIT019',DATE '2022-05-19',NULL),
('CONS020','CIT020',DATE '2022-05-20',NULL),

('CONS021','CIT021',DATE '2022-06-01',NULL),
('CONS022','CIT022',DATE '2022-06-02',NULL),
('CONS023','CIT023',DATE '2022-06-03',NULL),
('CONS024','CIT024',DATE '2022-06-04',NULL),
('CONS025','CIT025',DATE '2022-06-05',NULL),
('CONS026','CIT026',DATE '2022-06-06',NULL),
('CONS027','CIT027',DATE '2022-06-07',NULL),
('CONS028','CIT028',DATE '2022-06-08',NULL),
('CONS029','CIT029',DATE '2022-06-09',NULL),
('CONS030','CIT030',DATE '2022-06-10',NULL),

('CONS031','CIT031',DATE '2022-06-11',NULL),
('CONS032','CIT032',DATE '2022-06-12',NULL),
('CONS033','CIT033',DATE '2022-06-13',NULL),
('CONS034','CIT034',DATE '2022-06-14',NULL),
('CONS035','CIT035',DATE '2022-06-15',NULL),
('CONS036','CIT036',DATE '2022-06-16',NULL),
('CONS037','CIT037',DATE '2022-06-17',NULL),
('CONS038','CIT038',DATE '2022-06-18',NULL),
('CONS039','CIT039',DATE '2022-06-19',NULL),
('CONS040','CIT040',DATE '2022-06-20',NULL);


-- Consulta_Urgencia (20) -> CONS001..CONS020
INSERT INTO Consulta_Urgencia (idConsultaUrgencia, idConsulta, descripcion, estadoActual)
VALUES
('CU001','CONS001','Urgencia1','ingresado'),
('CU002','CONS002','Urgencia2','en tratamiento'),
('CU003','CONS003','Urgencia3','en cirugía'),
('CU004','CONS004','Urgencia4','derivado'),
('CU005','CONS005','Urgencia5','en observación'),
('CU006','CONS006','Urgencia6','fallecido'),
('CU007','CONS007','Urgencia7','dado de alta'),
('CU008','CONS008','Urgencia8','ingresado'),
('CU009','CONS009','Urgencia9','en tratamiento'),
('CU010','CONS010','Urgencia10','derivado'),
('CU011','CONS011','Urgencia11','en cirugía'),
('CU012','CONS012','Urgencia12','en tratamiento'),
('CU013','CONS013','Urgencia13','ingresado'),
('CU014','CONS014','Urgencia14','derivado'),
('CU015','CONS015','Urgencia15','en observación'),
('CU016','CONS016','Urgencia16','en cirugía'),
('CU017','CONS017','Urgencia17','ingresado'),
('CU018','CONS018','Urgencia18','en tratamiento'),
('CU019','CONS019','Urgencia19','derivado'),
('CU020','CONS020','Urgencia20','en observación');

-- Consulta_Rutinaria (20) -> CONS021..CONS040
INSERT INTO Consulta_Rutinaria (idConsultaRutinaria, idConsulta, motivo, duracion_aproximada, fecha_diagnostico_aproximada)
VALUES
('CR001','CONS021','Rutinaria1',30,DATE '2022-06-02'),
('CR002','CONS022','Rutinaria2',40,DATE '2022-06-03'),
('CR003','CONS023','Rutinaria3',20,DATE '2022-06-04'),
('CR004','CONS024','Rutinaria4',15,DATE '2022-06-05'),
('CR005','CONS025','Rutinaria5',25,DATE '2022-06-06'),
('CR006','CONS026','Rutinaria6',45,DATE '2022-06-07'),
('CR007','CONS027','Rutinaria7',35,DATE '2022-06-08'),
('CR008','CONS028','Rutinaria8',60,DATE '2022-06-09'),
('CR009','CONS029','Rutinaria9',55,DATE '2022-06-10'),
('CR010','CONS030','Rutinaria10',40,DATE '2022-06-11'),
('CR011','CONS031','Rutinaria11',20,DATE '2022-06-12'),
('CR012','CONS032','Rutinaria12',25,DATE '2022-06-13'),
('CR013','CONS033','Rutinaria13',30,DATE '2022-06-14'),
('CR014','CONS034','Rutinaria14',35,DATE '2022-06-15'),
('CR015','CONS035','Rutinaria15',40,DATE '2022-06-16'),
('CR016','CONS036','Rutinaria16',25,DATE '2022-06-17'),
('CR017','CONS037','Rutinaria17',45,DATE '2022-06-18'),
('CR018','CONS038','Rutinaria18',20,DATE '2022-06-19'),
('CR019','CONS039','Rutinaria19',30,DATE '2022-06-20'),
('CR020','CONS040','Rutinaria20',15,DATE '2022-06-21');




INSERT INTO Operada_Por (idOperadaPor, idSalaCirugia, idEmpleado)
VALUES
('OP001','SC001','E041'),
('OP002','SC002','E042'),
('OP003','SC003','E043'),
('OP004','SC004','E044'),
('OP005','SC005','E045'),
('OP006','SC006','E046'),
('OP007','SC007','E047'),
('OP008','SC008','E048'),
('OP009','SC009','E049'),
('OP010','SC010','E050'),
('OP011','SC011','E051'),
('OP012','SC012','E052'),
('OP013','SC013','E053'),
('OP014','SC014','E054'),
('OP015','SC015','E055'),
('OP016','SC016','E056'),
('OP017','SC017','E057'),
('OP018','SC018','E058'),
('OP019','SC019','E059'),
('OP020','SC020','E060');



INSERT INTO Utilizada_Por (idUtilizadaPor, idSalaVirtual, idVeterinario)
VALUES
('UP001','SV001','V001'),
('UP002','SV002','V002'),
('UP003','SV003','V003'),
('UP004','SV004','V004'),
('UP005','SV005','V005'),
('UP006','SV006','V006'),
('UP007','SV007','V007'),
('UP008','SV008','V008'),
('UP009','SV009','V009'),
('UP010','SV010','V010'),
('UP011','SV011','V011'),
('UP012','SV012','V012'),
('UP013','SV013','V013'),
('UP014','SV014','V014'),
('UP015','SV015','V015'),
('UP016','SV016','V016'),
('UP017','SV017','V017'),
('UP018','SV018','V018'),
('UP019','SV019','V019'),
('UP020','SV020','V020');




INSERT INTO Monitorizacion (idMonitorizacion, idSalaHospitalizacion, idVeterinario)
VALUES
('MO001','SH001','V001'),
('MO002','SH002','V002'),
('MO003','SH003','V003'),
('MO004','SH004','V004'),
('MO005','SH005','V005'),
('MO006','SH006','V006'),
('MO007','SH007','V007'),
('MO008','SH008','V008'),
('MO009','SH009','V009'),
('MO010','SH010','V010'),
('MO011','SH011','V011'),
('MO012','SH012','V012'),
('MO013','SH013','V013'),
('MO014','SH014','V014'),
('MO015','SH015','V015'),
('MO016','SH016','V016'),
('MO017','SH017','V017'),
('MO018','SH018','V018'),
('MO019','SH019','V019'),
('MO020','SH020','V020');



INSERT INTO Ocupada_Por (idOcupadaPor, idSalaHospitalizacion, idAnimal)
VALUES
('OC001','SH001','A001'),
('OC002','SH002','A002'),
('OC003','SH003','A003'),
('OC004','SH004','A004'),
('OC005','SH005','A005'),
('OC006','SH006','A006'),
('OC007','SH007','A007'),
('OC008','SH008','A008'),
('OC009','SH009','A009'),
('OC010','SH010','A010'),
('OC011','SH011','A011'),
('OC012','SH012','A012'),
('OC013','SH013','A013'),
('OC014','SH014','A014'),
('OC015','SH015','A015'),
('OC016','SH016','A016'),
('OC017','SH017','A017'),
('OC018','SH018','A018'),
('OC019','SH019','A019'),
('OC020','SH020','A020');



INSERT INTO Asignacion (idAsignacion, idSala, idConsulta, idAdministrador)
VALUES
('AS001','SAL001','CONS001','AD001'),
('AS002','SAL002','CONS002','AD002'),
('AS003','SAL003','CONS003','AD003'),
('AS004','SAL004','CONS004','AD004'),
('AS005','SAL005','CONS005','AD005'),
('AS006','SAL006','CONS006','AD006'),
('AS007','SAL007','CONS007','AD007'),
('AS008','SAL008','CONS008','AD008'),
('AS009','SAL009','CONS009','AD009'),
('AS010','SAL010','CONS010','AD010'),
('AS011','SAL011','CONS011','AD011'),
('AS012','SAL012','CONS012','AD012'),
('AS013','SAL013','CONS013','AD013'),
('AS014','SAL014','CONS014','AD014'),
('AS015','SAL015','CONS015','AD015'),
('AS016','SAL016','CONS016','AD016'),
('AS017','SAL017','CONS017','AD017'),
('AS018','SAL018','CONS018','AD018'),
('AS019','SAL019','CONS019','AD019'),
('AS020','SAL020','CONS020','AD020');


INSERT INTO Receta (idReceta, idConsulta, idMedicamento, idAnimal, dosis, unidades_a_suministrar, fecha_comienzo, fecha_fin)
VALUES
('R001','CONS021','M001','A001','10 mg diarios',5,DATE '2022-06-02',DATE '2022-06-07'),
('R002','CONS022','M002','A002','5 ml cada 8h',10,DATE '2022-06-03',DATE '2022-06-10'),
('R003','CONS023','M003','A003','1 comprimido al día',5,DATE '2022-06-04',DATE '2022-06-09'),
('R004','CONS024','M004','A004','2 comprimidos al día',6,DATE '2022-06-05',DATE '2022-06-12'),
('R005','CONS025','M005','A005','1 ampolla diaria',5,DATE '2022-06-06',DATE '2022-06-11'),
('R006','CONS026','M006','A006','10 mg diarios',4,DATE '2022-06-07',DATE '2022-06-15'),
('R007','CONS027','M007','A007','5 ml cada 8h',8,DATE '2022-06-08',DATE '2022-06-14'),
('R008','CONS028','M008','A008','1 comprimido al día',7,DATE '2022-06-09',DATE '2022-06-16'),
('R009','CONS029','M009','A009','2 comprimidos al día',4,DATE '2022-06-10',DATE '2022-06-17'),
('R010','CONS030','M010','A010','1 ampolla diaria',3,DATE '2022-06-11',DATE '2022-06-13'),

('R011','CONS031','M011','A011','10 mg diarios',4,DATE '2022-06-12',DATE '2022-06-18'),
('R012','CONS032','M012','A012','5 ml cada 8h',9,DATE '2022-06-13',DATE '2022-06-20'),
('R013','CONS033','M013','A013','1 comprimido al día',8,DATE '2022-06-14',DATE '2022-06-22'),
('R014','CONS034','M014','A014','2 comprimidos al día',6,DATE '2022-06-15',DATE '2022-06-21'),
('R015','CONS035','M015','A015','1 ampolla diaria',5,DATE '2022-06-16',DATE '2022-06-23'),
('R016','CONS036','M016','A016','10 mg diarios',4,DATE '2022-06-17',DATE '2022-06-24'),
('R017','CONS037','M017','A017','5 ml cada 8h',5,DATE '2022-06-18',DATE '2022-06-25'),
('R018','CONS038','M018','A018','1 comprimido al día',6,DATE '2022-06-19',DATE '2022-06-26'),
('R019','CONS039','M019','A019','2 comprimidos al día',7,DATE '2022-06-20',DATE '2022-06-27'),
('R020','CONS040','M020','A020','1 ampolla diaria',8,DATE '2022-06-21',DATE '2022-06-29');


INSERT INTO Proveido_Por (idProveidoPor, idMedicamento, idProveedor)
VALUES
('PP001','M001','PR001'),
('PP002','M002','PR002'),
('PP003','M003','PR003'),
('PP004','M004','PR004'),
('PP005','M005','PR005'),
('PP006','M006','PR006'),
('PP007','M007','PR007'),
('PP008','M008','PR008'),
('PP009','M009','PR009'),
('PP010','M010','PR010'),
('PP011','M011','PR011'),
('PP012','M012','PR012'),
('PP013','M013','PR013'),
('PP014','M014','PR014'),
('PP015','M015','PR015'),
('PP016','M016','PR016'),
('PP017','M017','PR017'),
('PP018','M018','PR018'),
('PP019','M019','PR019'),
('PP020','M020','PR020');

