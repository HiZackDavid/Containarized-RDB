# Getting base image for PostgreSQL
FROM postgres:15.2

# Installing pgvector extension
RUN apt-get update && apt-get install -y postgresql-15-pgvector

# Copy sql file with instruction on the creation of the database and tables into the container
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default PostgreSQL port
EXPOSE 5432

# Starting the PostgreSQL server
CMD ["postgres"]

ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}