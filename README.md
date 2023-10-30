# Docker Nginx Chisel

This repository contains the Docker configuration for setting up an Nginx server integrated with Chisel, a fast TCP/UDP tunnel, transported over HTTP, secured via SSH. This combination is particularly useful for creating a secure tunneling service, which can be used for securely exposing local services to the internet or for bypassing network restrictions.

## Features

- **Nginx:** Robust, high-performance web server providing reverse proxy functionality.
- **Chisel:** A secure tunneling tool, enabling SSH-like tunneling capabilities over HTTP.
- **Docker:** Containerized for ease of deployment and isolation.

## Prerequisites

- Docker
- Docker Compose
- Basic understanding of Docker, Nginx, and SSH tunneling concepts.

## Installation

1. **Clone the Repository**

    ```sh
    git clone https://github.com/QNimbus/docker-nginx-chisel.git
    cd docker-nginx-chisel
    ```

2. **Configuration**

    Before running the service, configure Nginx and Chisel according to your specific requirements. Update the Nginx configuration files and Chisel settings as needed.

3. **Build and Run with Docker Compose**

    ```sh
    docker compose -f ./docker-compose.yaml up
    docker compose -f ./docker-compose-le.yaml up
    ```

    This command will build the Docker image and start the containers.

## Usage

Once the service is running, you can configure your client devices to connect to the Chisel server through the Nginx reverse proxy. The specifics will depend on the configuration you have chosen.

## Security

Ensure that your Nginx and Chisel instances are properly secured. This includes:

- Setting up strong passwords.
- Configuring SSL/TLS for Nginx.
- Regularly updating the Docker images and software to their latest versions.

## Contributing

Contributions to this project are welcome! Here's how you can contribute:

- **Reporting issues**
- **Submitting Pull Requests** with bug fixes or new features
- **Improving documentation**

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the developers of Nginx for the robust web server.
- Gratitude to the creators of Chisel for their secure tunneling tool.
- Appreciation to the Docker community for their consistent support and contributions.
