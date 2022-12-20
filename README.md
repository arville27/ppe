# Python Power Electronics in Docker

This is a Dockerized version of the [Python Power Electronic](https://www.pythonpowerelectronics.com/) for performing simulations and analyses of power electronic circuits.

## Requirements

To run this application, you will need to have Docker and Docker Compose installed on your system. You can find instructions for installing Docker [here](https://docs.docker.com/get-docker/) and instructions for installing Docker Compose [here](https://docs.docker.com/compose/install/)..

## Running the Application

To run the application, first clone this repository to your local machine:

```bash
git clone https://github.com/arville27/ppe.git
```
Next, navigate to the root directory of the repository and copy the configuration file from `.env.example` to `.env`.
```bash
cd ppe
cp .env.example .env
```
Finally, start the application using Docker Compose.
```bash
docker compose up -d
```
This will start the application and make it available at http://localhost:8000 in your web browser. Additionally, an SFTP server will be available at sftp://localhost:2222. You can use an SFTP client to connect to this server using the username and password specified in the .env file.

## Troubleshooting
If you run into any issues while running the application, here are a few things you can try:

- Make sure that Docker is installed and running correctly on your system.
- Check the logs for the Docker container to see if there are any error messages or other helpful information. You can view the logs by using the docker logs command.
- Double check that you have correctly copied the configuration file from .env.example to .env.
- Check the `data` directory permission, verify that the user has access to write and read from the directory.

## Fun Fact

Did you know that most of the README was generated by an AI? That's right, even the fun fact at the end was generated by an AI!