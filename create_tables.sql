CREATE table carModel (
  model_no      INTEGER     NOT NULL,
  car_color     VARCHAR(20) NOT NULL,
  car_year      INTEGER     NOT NULL,
  CONSTRAINT carModel_pk PRIMARY KEY (model_no, car_color, car_year)
);

CREATE TABLE car (
  car_id          VARCHAR(10) NOT NULL,
  serial_number   INTEGER     NOT NULL,
  model_no        INTEGER     NOT NULL,
  car_color       VARCHAR(20) NOT NULL,
  car_year        INTEGER     NOT NULL,
  CONSTRAINT car_id_pk PRIMARY KEY (car_id),
  CONSTRAINT carModel_uk UNIQUE (model_no, car_color, car_year)
);

CREATE TABLE customer (
  customer_id         VARCHAR(20) NOT NULL,
  customer_name       VARCHAR(50) NOT NULL,
  customer_phoneno    VARCHAR(20) NOT NULL,
  address             VARCHAR(50) NOT NULL,
  country             VARCHAR(20) NOT NULL,
  city                VARCHAR(20) NOT NULL,
  CONSTRAINT customer_id_pk PRIMARY KEY (customer_id)
);

CREATE TABLE employee (
  emp_id      VARCHAR(20) NOT NULL,
  emp_name    VARCHAR(50) NOT NULL,
  address     VARCHAR(60) NOT NULL,
  CONSTRAINT emp_id_pk PRIMARY KEY (emp_id)
);

CREATE TABLE qualifications (
  emp_name       VARCHAR(50) NOT NULL,
  emp_id         VARCHAR(20) NOT NULL,
  skills         VARCHAR(50) NOT NULL,
  education      VARCHAR(50) NOT NULL,
  certifications INTEGER NOT NULL,
  CONSTRAINT qual_pk PRIMARY KEY (emp_id, skills, education, certifications),
  CONSTRAINT emp_qual_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE invoice (
  invoice_id    VARCHAR(20) NOT NULL,
  invoice_date  DATE NOT NULL,
  emp_id        VARCHAR(20) NOT NULL,
  customer_id   VARCHAR(20) NOT NULL,
  CONSTRAINT invoice_pk PRIMARY KEY (invoice_id),
  CONSTRAINT invoice_customer_fk FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
  CONSTRAINT invoice_employee_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

CREATE TABLE sell (
  car_id      VARCHAR(10) NOT NULL,
  emp_id      VARCHAR(20) NOT NULL,
  invoice_id  VARCHAR(20) NOT NULL,
  sell_date   DATE NOT NULL,
  CONSTRAINT sell_pk PRIMARY KEY (car_id, emp_id, invoice_id),
  CONSTRAINT car_id_fk FOREIGN KEY (car_id) REFERENCES car(car_id),
  CONSTRAINT emp_id_fk FOREIGN KEY (emp_id) REFERENCES employee(emp_id),
  CONSTRAINT invoice_id_fk FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);
