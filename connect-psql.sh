# Define the database credentials
DB_HOST="0.0.0.0"      # Replace with your database host (e.g., localhost or an IP address)
DB_PORT="5122"                  # Default PostgreSQL port, adjust if necessary
DB_NAME="split_and_share"    # Replace with your database name
DB_USER="postgres"         # Replace with your PostgreSQL username
DB_PASSWORD=$POSTGRES_PASSWORD     # Replace with your PostgreSQL password

# Export the password to avoid interactive password prompt
export PGPASSWORD=$DB_PASSWORD

# Connect to PostgreSQL database using psql
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME