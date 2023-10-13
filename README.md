## Build the container 
docker build -t enhance_test /path/to/ENHANCE.PET_DockerTests

## Get an interactive session within the container
docker run -it --rm  enhance_test bash
