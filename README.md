# Containarized-RDB
Déploiement  d'une version containérisé d'une base de données relationnelle accessible par Internet.

# Getting Started
1- Clone the repository to your local machine:
git clone https://github.com/HiZackDavid/Containarized-RDB.git

2- Navigate to the project directory:

``cd Containarized-RDB``

3- Build the Docker image:

``docker build -t postgresql-container .``

4- Run the Docker container:

``docker run -d -p 5432:5432 --name my-postgresql-container -e POSTGRES_PASSWORD=RiskyDrunk23 hizackdavid/postgresql-container:latest``

5- Connect to the database:
``psql -h localhost -p 5432 -U postgres -d TestStageDB``