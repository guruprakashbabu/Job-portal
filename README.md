# Online Job Portal

This is an online job portal developed using **Java Servlets**, **MySQL**, and **Bootstrap**. The platform allows employers to post job listings, job seekers to browse and apply for jobs, and admins to manage the job listings.

## Technologies Used:
- **Java Servlets**: For the back-end functionality and logic.
- **MySQL**: To store job listings, user details, and applications.
- **Bootstrap**: For a responsive and modern front-end design.

## Features:
### General Features:
- **User Registration and Login**:
  - Separate login and registration pages for both **Employers** and **Job Seekers**.
  - Secure authentication to ensure the right users have access to their respective accounts.
  
- **Job Posting (for Employers)**:
  - Employers can create new job listings, specifying job details like title, description, location, etc.
  - Ability to edit or delete job listings after posting.
  
- **Job Search and Apply (for Job Seekers)**:
  - Job seekers can browse available job listings by various filters (e.g., job title, location, etc.).
  - Job seekers can apply to jobs directly through the platform.

### Admin Features:
- **Admin Dashboard**:
  - Admins have access to an admin panel where they can:
    - **Add** new jobs manually (if needed).
    - **Edit** or **Delete** existing job listings.
    - **View applicants** for each job listing (who applied, their details, etc.).

### User Features:
- **Job Search**:
  - Job seekers can search for jobs based on various criteria (e.g., job title, location, company).
  - They can view detailed information about each job listing.

- **Job Application**:
  - Job seekers can apply to a job by submitting their details (such as resume and contact information) for consideration.

---

## Installation

### Prerequisites:
- **Java**: Make sure you have JDK installed.
- **MySQL**: Install MySQL or use a MySQL-compatible database system.
- **Apache Tomcat**: For running the Java Servlets.

### Steps to Install:
1. Clone this repository:
   ```bash
   git clone https://github.com/guruprakashbabu/job-portal.git
