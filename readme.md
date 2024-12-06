Chocolate House
Chocolate House is a dynamic web application designed for managing seasonal chocolate flavors, keeping track of ingredients, and gathering customer flavor suggestions. This project is built using Django and Docker to ensure scalability and ease of deployment.

Key Features
Seasonal Flavors Management: Seamlessly manage seasonal chocolate flavors, including the ability to add, update, or delete entries.
Ingredient Inventory: Efficiently track ingredients, their quantities, and measurement units for optimal stock management.
Customer Suggestions: Collect and manage customer-submitted flavor ideas and allergy alerts to enhance the product offerings.
Technologies Used
Backend: Django (Python)
Frontend: HTML, CSS, Google Fonts for stylish and responsive UI
Database: SQLite (for development) – easily configurable for production databases like PostgreSQL
Containerization: Docker for consistent and portable deployments
Getting Started
Prerequisites
Before running the project, ensure the following software is installed on your system:

Python 3.8 or higher
Docker and Docker Compose
Installation Steps
Clone the repository: Open your terminal and clone the repository with:

bash
Copy code
git clone <repository-url>
cd chocolate-house
Build and start the Docker containers: Run the following command to set up the containers and dependencies:

bash
Copy code
docker-compose up --build
Access the application: Once the containers are up and running, open your browser and navigate to:

arduino
Copy code
http://localhost:8000
Apply database migrations: Run the following command to set up the database schema inside the container:

bash
Copy code
docker exec -it <container_name> python manage.py migrate
Create a superuser: Create an admin user for accessing the Django admin panel:

bash
Copy code
docker exec -it <container_name> python manage.py createsuperuser
Configure environment variables: Update the settings for your local environment:

Set DEBUG=True for local development.
Define a SECRET_KEY for security.
Configure ALLOWED_HOSTS to include localhost and 127.0.0.1.
Set up your DATABASE_URL (default is SQLite, which works for development):
bash
Copy code
DATABASE_URL=sqlite:///db.sqlite3# ChocolateHouse
