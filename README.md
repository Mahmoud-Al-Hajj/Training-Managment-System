# Training Managment System (Oracle APEX)
An internal system for HR to manage employee training sessions, attendance, training providers, and compliance metrics.

## 📦 Features

- Bulk add/update session participants
- Provider management
- Track attendance, cost, and training history
- Session scheduling, filtering, provider assignment
- APEX Interactive Grids and Forms
- Dashboard with analytics


## 🛠 Tech Stack

- Oracle APEX
- Oracle PL/SQL
- SQL Developer

## ⚙️ Advanced Features
#### 🔁 Bulk Actions
Register multiple participants in one session (Page 21)
Update status for multiple records in interactive grid (Page 36)

#### 🔎 Dynamic Filtering
Filter participants, sessions, or courses based on dropdowns, session state
Automatically fetch related sessions after selecting a course

## 🔐 Validations & Triggers
Prevent sessions from exceeding course size
Prevent invalid date entries (e.g., course start before today)
Attendance auto status trigger (based on date/time)
Custom procedures to mass update or register participants
