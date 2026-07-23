#CREATE DATABASE IF NOT EXISTS gym_management;
#USE gym_management;
#CREATE TABLE Register (
  #  id INT AUTO_INCREMENT PRIMARY KEY,
   # User_name VARCHAR(50) UNIQUE NOT NULL,
    #Phone_number VARCHAR(15),
    #password VARCHAR(255) NOT NULL,
    #confirm_password  VARCHAR(255) NOT NULL,
    #gender ENUM('Male', 'Female') NOT NULL
#);
 # CREATE TABLE IF NOT EXISTS Coaches (
  #  id INT AUTO_INCREMENT PRIMARY KEY,  
   # Coach_Name VARCHAR(100) NOT NULL,  
    #Phone_Number VARCHAR(15) NOT NULL,  
    #Age INT,                           
    #Gender ENUM('Male', 'Female') //varchar
#);

#CREATE TABLE Members (
 #   memberId INT AUTO_INCREMENT PRIMARY KEY,
  #  member_Name VARCHAR(100) NOT NULL,
   # PhoneNumber VARCHAR(15),
    #coach_id INT,
    #Age INT,
    #Gender ENUM('Male', 'Female'),
    #Timing VARCHAR(50),
    #FOREIGN KEY (coach_id) REFERENCES Coaches(id)
#);
#ALTER TABLE members drop constraint members_ibfk_1;
  ALTER TABLE members
ADD CONSTRAINT c_id
FOREIGN KEY (coach_id) REFERENCES coaches(id)
ON DELETE SET NULL;
#CREATE TABLE ManageFinance (
 #  id INT AUTO_INCREMENT PRIMARY KEY,
  # member_id INT,managefinance_ibfk_1managefinance_ibfk_1
  #Amount INT NOT NULL, -- Amount paid by the member
   # Month VARCHAR(50) NOT NULL, -- Month of payment
   # PaymentCode VARCHAR(100) UNIQUE NOT NULL, -- Unique payment identifier
    #Gender ENUM('Male', 'Female') NOT NULL, -- Member's gender
    #FOREIGN KEY (member_id) REFERENCES Members( memberId) -- Links to the Members table
#);
  #ALTER TABLE ManageFinance drop constraint managefinance_ibfk_1;
  #ALTER TABLE ManageFinance
#ADD CONSTRAINT memb_id
#FOREIGN KEY (member_id) REFERENCES members(memberId)
#ON DELETE CASCADE;
#INSERT INTO ManageFinance (managefinance.member_id, managefinance.Amount, managefinance.Month, managefinance.PaymentCode,managefinance.Gender)
#VALUES (1, 100, 'January', 'PAY123', 'FeMale'),
#		(2, 200, 'December', 'PAY122', 'FeMale');
#INSERT INTO Register (User_name, Phone_number, password,confirm_password, gender)
#VALUES ('admin', '1234567890', 'adminpass','adminpass','Male');

#INSERT INTO Coaches (coaches.Coach_Name, coaches.Phone_Number,coaches.Age,coaches.Gender)
#VALUES ('Coach Ahmed',  '01151001790',20, 'male'),
 #      ('Coach mona', '01080147542', 25,'female');

#INSERT INTO Members (members.member_Name, members.PhoneNumber, members.coach_id,members.Age, members.Gender, members.Timing)
#VALUES ('farah', '01151001780', 1, 20, 'Female', '6 AM - 7 AM'),
 #      ('sondos', '01151001770', 2, 20, 'Female', '7 AM - 8 AM');
#ALTER TABLE Coaches CHANGE Coach_Name coach_name VARCHAR(100) NOT NULL;
#select memberId,coach_name from members ,Coaches where members.coach_id=coaches.id;
#drop table managefinance;
select * from members;
select *from managefinance;
select *from members WHERE memberId=6;
select * from register;