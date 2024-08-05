CREATE TABLE student
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    credits INT          NOT NULL
);
CREATE TABLE exam
(
    exam_code     VARCHAR(10) PRIMARY KEY,
    passing_score INT         NOT NULL,
    module_id     VARCHAR(10) NOT NULL,
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module (id)
);

CREATE TABLE batch
(
    number      VARCHAR(100) PRIMARY KEY,
    programm_id VARCHAR(10) NOT NULL
);

CREATE TABLE enrolment(
student_id VARCHAR(10) NOT NULL,
batch_number VARCHAR(10) NOT NULL,
CONSTRAINT PK PRIMARY KEY (student_id,batch_number),
registration_date DATE NOT NULL
);
