USE vaidpr_ems;

-- Drop existing table if it exists
DROP TABLE IF EXISTS leave_applications;

-- Create leave_applications table with correct structure
CREATE TABLE leave_applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    status ENUM('Pending', 'Accepted', 'Declined') DEFAULT 'Pending',
    request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_email) REFERENCES ems(Email)
); 