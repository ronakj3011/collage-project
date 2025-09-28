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
<img width="1366" height="768" alt="Screenshot from 2025-09-24 15-14-38" src="https://github.com/user-attachments/assets/237e8c05-3db3-432e-b6f8-790a6b6b787f" />


2. **About us Page.**
<img width="1366" height="768" alt="Screenshot from 2025-09-24 15-15-11" src="https://github.com/user-attachments/assets/4c8c77aa-906e-441d-abb6-2d90c3840b83" />


3. **Form Page for User Data.**
<img width="1366" height="768" alt="Screenshot from 2025-09-24 15-15-23" src="https://github.com/user-attachments/assets/204f8921-1862-497c-a309-4337a6337a9b" />



4. **Predition.**
<img width="1366" height="768" alt="prediction" src="https://github.com/user-attachments/assets/acff1d01-dad5-44da-94cd-434a0f234009" />



5. **Profile Page.**
<img width="1366" height="768" alt="profile" src="https://github.com/user-attachments/assets/d0edbab2-b1fd-4612-a2d9-c95c3cfd4ccc" />



6. **Sign up Page.**
<img width="1366" height="768" alt="sign_up" src="https://github.com/user-attachments/assets/fa2a00e5-4863-4add-b5f1-f4b6a34a70ac" />
