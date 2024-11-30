# hris-beta
# React-Django HRIS Project

## Project Overview

This project is a web application built using React for the frontend and Django for the backend. It provides a login system and various HR-related functionalities such as employee management, attendance tracking, recruiting, onboarding, payroll management, and more.

## Project Structure

The project is organized into several key directories:

- `frontend/`: Contains the React frontend application
- `myproject/`: Contains the Django backend application
- `users/`: Django app for user management
- `profile_pictures/`: Storage for user profile pictures
- `staging/onboarding-app/`: Staging environment for the onboarding application

## Frontend (React)

### Setup and Installation

1. Navigate to the `frontend` directory:

2. Install dependencies:

The application will be available at `http://localhost:3000`.

### Key Components

- `LoginForm`: Handles user authentication
- `WelcomePage`: Landing page after successful login
- `Employees`: Employee management interface
- `Attendance`: Attendance tracking system
- `Recruiting`: Recruitment management
- `Onboarding`: New employee onboarding process
- `Processing`: Data processing component
- `PayrollAccounts`: Manages payroll accounts
- `Payroll`: Handles payroll operations
- `PayrollManagement`: Overall payroll management system
![image](https://github.com/user-attachments/assets/61e1e29e-98f6-4bc4-a099-b14c632ee0f2)

### Routing

The application uses React Router for navigation. Routes are protected using a `PrivateRoute` component to ensure only authenticated users can access certain pages.

## Backend (Django)

### Setup and Installation

1. Navigate to the project root directory.

2. Install Python dependencies:

3. Run migrations:

4. Start the Django development server:

The backend API will be available at `http://localhost:8000`.

### Key Components

- User Management: Handled by the `users` Django app
- Authentication: Uses Django Rest Framework Simple JWT for token-based authentication

## API Endpoints

(Note: Specific API endpoints would need to be documented based on the actual implementation in the Django views and URLs)

## Authentication

The application uses token-based authentication. After successful login, a token is stored in the browser's local storage and is used for subsequent API requests.

## Staging Environment

A staging environment for the onboarding application is available in the `staging/onboarding-app/` directory. Follow the same setup process as the main frontend application to run this staging environment.

## Development Workflow

1. Make changes to the React components in the `frontend/src` directory.
2. Implement corresponding API endpoints in the Django backend.
3. Test changes locally using the development servers for both frontend and backend.
4. Commit changes and push to the repository.

## Deployment

(Note: Specific deployment instructions would depend on the hosting environment and deployment process used for this project)
