CREATE TABLE module(
    id VARCHAR(10) PRIMARY KEY ,
    name VARCHAR(100) NOT NULL ,
    credits INT NOT NULL
);
CREATE TABLE exam(
    exam_code VARCHAR(10) PRIMARY KEY ,
    passing_score INT NOT NULL ,
    module_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE student_exam(
    student_id VARCHAR(10) NOT NULL,
    exam_code VARCHAR(10) NOT NULL ,
    marks INT NOT NULL,
    CONSTRAINT pk_take PRIMARY KEY (student_id, exam_code),
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES student(id)
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(code)
);
