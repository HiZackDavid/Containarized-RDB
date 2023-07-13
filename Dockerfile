# Getting base image for PostgreSQL
FROM postgres:15.2

# Installing the necessary dependancies for the pgvector extension
RUN apt-get update && apt-get install -y build-essential

# Cloning pgvector extension repository
RUN git clone https://github.com/pgvector/pgvector.git /pgvector

# Compiling and building pgvector extension using the "make" provided
RUN cd /pgvector && make && make install

# Copy the personalised configuration file for postgresql inside the image for later configuration
COPY postgresql.conf /etc/postgresql/postgresql.conf