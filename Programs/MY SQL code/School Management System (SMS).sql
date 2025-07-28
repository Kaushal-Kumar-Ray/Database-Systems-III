use  school;
CREATE TABLE if not exists students (
		std_id BIGINT PRIMARY KEY,
        std_name varchar(20),
        std_dob DATE,
        std_gender ENUM('Male','Female','Others')
        );
        
CREATE TABLE if not exists subjects (
		sub_id int PRIMARY KEY,
        sub_name varchar(20),
        full_marks int
        );

CREATE TABLE if not exists teachers(
		t_id int PRIMARY KEY,
        t_name varchar(20),
        sub_id int,
        FOREIGN KEY(sub_id) REFERENCES subjects(sub_id)
        );

CREATE TABLE IF NOT EXISTS student_subject (
  std_id INT,
  sub_id INT,
  marks_obtained INT,
  PRIMARY KEY (std_id, sub_id),
  FOREIGN KEY (std_id) REFERENCES students(std_id),
  FOREIGN KEY (sub_id) REFERENCES subjects(sub_id)
);


-- NOW WORKING WITH STUDENTS TABLE......................................
INSERT INTO students (std_id, std_name, std_dob, std_gender) VALUES
(240205131115, 'SAHU SWAYAM', '2004-03-15', 'Male'),
(240205241046, 'ALOK THAKUR', '2003-11-09', 'Male'),
(240205131003, 'RUPESH KUMAR', '2005-01-22', 'Male'),
(240205131006, 'SURAJ KUMAR', '2004-06-18', 'Male'),
(240205131015, 'ADITYA RAJ', '2003-08-10', 'Male'),
(240205131028, 'PALLAVI JHA', '2004-02-05', 'Female'),
(240205131044, 'RAUSHAN KUMAR', '2005-05-14', 'Male'),
(240205131045, 'MINTU KUMAR', '2004-04-30', 'Male'),
(240205131052, 'SHIVPUJAN KUMAR', '2003-12-25', 'Male'),
(240205131071, 'BRAJESH KUMAR', '2004-09-11', 'Male'),
(240205241001, 'MD SOHAIL', '2004-01-08', 'Male'),
(240205241002, 'ROHIT KUMAR', '2005-06-17', 'Male'),
(240205241003, 'SUNDARAM KUMAR', '2003-10-03', 'Male'),
(240205241004, 'ANURANJAN KUMAR', '2004-07-28', 'Male'),
(240205241005, 'VISHAL JHA', '2004-02-12', 'Male'),
(240205241006, 'AARZOO KUMARI', '2005-03-30', 'Female'),
(240205241007, 'PRIYANSHU SHARMA', '2003-05-19', 'Male'),
(240205241008, 'AAYUSH RAJ', '2004-11-22', 'Male'),
(240205241009, 'ANKIT KUMAR', '2005-08-04', 'Male'),
(240205241010, 'PRIYANSHU KUMAR', '2004-10-26', 'Male'),
(240205241011, 'WASEEM AKRAM', '2003-09-15', 'Male'),
(240205241012, 'AMIT PATEL', '2005-01-29', 'Male'),
(240205241014, 'GANESH CHAUPAL', '2004-06-04', 'Male'),
(240205241015, 'ROHIT KUMAR', '2003-12-01', 'Male'),
(240205241016, 'GAJENDRA YADAV', '2004-03-08', 'Male'),
(240205241017, 'ADARSH SANJEET', '2005-07-07', 'Male'),
(240205241018, 'MD DANISH', '2004-05-20', 'Male'),
(240205241022, 'ABHISHEK KHARGA', '2003-08-27', 'Male'),
(240205241023, 'KAUSHAL RAY', '2005-02-16', 'Male'),
(240205241024, 'AAKASH PATEL', '2004-10-10', 'Male');



