INSERT INTO customer VALUES ('CS0001', 'Cyrus Kent De Guzman', '09766190729', 'Permanent Housing', 'Philippines', 'Manila');
INSERT INTO customer VALUES ('CS0002', 'Xyza Blessy De Guzman', '09682163818', 'Vista Recto Residences', 'Philippines', 'Manila');
INSERT INTO customer VALUES ('CS0003', 'Mocha De Guzman', '09162460666', 'PalSU', 'Philippines', 'Palawan');
INSERT INTO customer VALUES ('CS0004', 'Fang Yuan', '09162349244', 'Sovereign Immortal Apperture', 'Gu World', 'Eastern Sea');

INSERT INTO carModel VALUES (0001, 'Red', 2004);
INSERT INTO carModel VALUES (0002, 'Yellow', 2006);

INSERT INTO car VALUES ('C001', 000001, 0001, 'Red', 2004);
INSERT INTO car VALUES ('C002', 000002, 0002, 'Yellow', 2006);

INSERT INTO employee VALUES ('EMP001', 'Juan Dela Cruz', 'St 73 Sta. Cruz Manila');
INSERT INTO employee VALUES ('EMP002', 'Maria Clara', 'Blg 7 Unit 501 Tondo Manila');

INSERT INTO qualifications VALUES ('Juan Dela Cruz', 'EMP001', 'Market Promotion', 'College Graduate', 5);
INSERT INTO qualifications VALUES ('Maria Clara', 'EMP002', 'Sales', 'Highschool Graduate', 3);

INSERT INTO invoice VALUES ('INV001', TO_DATE('2025-10-7','YYYY-MM-DD'), 'EMP001', 'CS0001');
INSERT INTO invoice VALUES ('INV002', TO_DATE('2025-10-7','YYYY-MM-DD'), 'EMP001', 'CS0002');
INSERT INTO invoice VALUES ('INV003', TO_DATE('2025-12-1','YYYY-MM-DD'), 'EMP002', 'CS0003');

INSERT INTO sell VALUES ('C001', 'EMP001', 'INV001', TO_DATE('2025-10-7', 'YYYY-MM-DD'));
INSERT INTO sell VALUES ('C001', 'EMP001', 'INV002', TO_DATE('2025-10-7', 'YYYY-MM-DD'));
INSERT INTO sell VALUES ('C002', 'EMP002', 'INV003', TO_DATE('2025-12-1', 'YYYY-MM-DD'));
