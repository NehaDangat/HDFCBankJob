# Use a base image that includes KrakenD
FROM devopsfaith/krakend:latest

# Copy your KrakenD configuration file into the container
COPY krakend.json /etc/krakend/krakend.json 

# Expose the port defined in your KrakenD configuration file
EXPOSE 8080

# Set the default command to run KrakenD with your configuration file
CMD ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
