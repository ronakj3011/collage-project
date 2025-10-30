# Collage Project – Heart Attack Risk Prediction

A full-stack project that predicts **heart attack risk** based on user data and displays previous results in a **chat-like format**.

## Tech Stack
- **Backend:** Ruby on Rails  
- **ML API:** Python (Flask/FastAPI)  
- **Database:** PostgreSQL  
- **Containerization:** Docker & Docker Compose
- **CI/CD:** Jenkins
## Features
- Predict the risk of heart attack based on user inputs.  
- Display previous predictions in a **chat-style interface** for easy tracking.  
- User authentication and data management (Devise).  
- Full Dockerized setup for easy deployment.
- Fully automated CI/CD pipeline for deployment and integration.

## Setup

1. **Clone the repository**
```bash
git clone https://github.com/ronakj3011/collage-project.git
cd collage-project
````
2. **Start services with Docker Compose**
```bash
docker compose up
````
- **Rails app** → http://localhost:3000
- **Python ML API** → http://localhost:5000

3. **Run pending migrations**
```bash
docker compose run --rm rails-app bin/rails db:migrate 
````

## Usage

1. **Sign up or log in via the Rails app.**
2. **Enter your health data to get a heart attack risk prediction.**
3. **View your previous data in chat format, making it easy to track trends over time.**

## Contribution

1. **Fork the repo, create a branch, and submit a pull request.**
2. **Report bugs or suggest features via GitHub Issues.**


## User Interface 
1. **Login Page.**

    <img width="1529" height="708" alt="localhost_3000_users_sign_in" src="https://github.com/user-attachments/assets/e92f24d4-a028-47cc-8cf5-b09b36d5caed" />

2. **Dashboard Page.**

    <img width="1529" height="2042" alt="localhost_3000_" src="https://github.com/user-attachments/assets/57e5f0b1-68bc-483e-b536-932da74c5162" />

3. **About Us Page.**

    <img width="1529" height="972" alt="localhost_3000_predictions_about_us" src="https://github.com/user-attachments/assets/4f84da42-3106-4503-ac18-00ae98d570b6" />

4. **Form Page for User Data.**

    <img width="1529" height="1565" alt="localhost_3000_predictions_about_us (1)" src="https://github.com/user-attachments/assets/50a539a3-aa7b-46ad-9656-0688cd5eeb4a" />
5. **Preditions.**
 
  - **Low Risk:**
    <img width="1529" height="540" alt="localhost_3000_predictions_about_us (3)" src="https://github.com/user-attachments/assets/71e501db-7dab-4985-8c58-baadab6ba368" />

  - **High Risk:**
    <img width="1529" height="607" alt="localhost_3000_predictions_report_heart" src="https://github.com/user-attachments/assets/ea12a33f-fc42-4d69-ad7f-a4c1e0e13dbc" />

6. **Profile Page.**

    <img width="1529" height="1147" alt="localhost_3000_predictions_about_us (2)" src="https://github.com/user-attachments/assets/8f57f1ba-a818-43f0-b60b-b47a60cc6fcd" />

7. **Sign up Page.**

    <img width="1529" height="779" alt="localhost_3000_users_sign_in (1)" src="https://github.com/user-attachments/assets/0f07c2f8-84cf-4852-acbc-03ca32e58256" />
