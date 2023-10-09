# katakana-oi

Hello!

This is a small project dedicated to the hilarious and frustrating take-over of the Japanese language by foreign words.
_____

This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

And also set up with turborepo

_____
TO BUILD
turbo build lint
docker-compose up --build --remove-orphans 
_____
TO RUN
docker run -d
turbo dev



_____ 
LEARNING

Database:
docker volume ls
docker volume inspect katakana-oi_katakanaDB_data

The database (in this case, MariaDB) is the actual software that manages and stores your data. It's where your tables, records, and relationships are defined. Think of it as the engine that powers your data storage and retrieval operations.
Volume:

The volume in Docker is a way to persistently store data used by containers. It's essentially a directory on your host machine's filesystem that is mounted into the container. In this context, the volume (mariadb_data) serves as a place where MariaDB will store its data files. This ensures that even if the container is stopped or removed, the data persists on your host machine.
Communication:

The communication between your app and the MariaDB database is handled through a network connection. When you run your app (which could be in a separate container or on your host machine), it connects to the MariaDB server using a specific protocol (typically TCP/IP over a specific port, like 3306 for MySQL/MariaDB). The app sends SQL queries to the database server, which processes them and returns the results.
Interacting with Database and Volume:

To interact with the database, you'll use a database client or your application's code. You'll connect to the MariaDB server using the appropriate credentials (username, password) and execute SQL queries to perform CRUD operations (Create, Read, Update, Delete) on your data.

To manage the Docker volume, you typically don't need to interact with it directly. Docker manages the volume lifecycle for you. It ensures that data is stored persistently and can be accessed by your container. If you ever need to back up or manage the data externally, you can access it on your host machine in the location specified by the volume (in this case, mariadb_data).

The Dockerfile is primarily used to define how your Docker image is built, including what files and configurations are included in the image. It's separate from the docker-compose.yml, which is used for orchestrating multiple containers and defining their relationships.

