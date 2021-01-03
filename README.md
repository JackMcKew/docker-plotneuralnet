# docker-plotneuralnet
A Docker image that provides [PlotNeuralNet](https://github.com/HarisIqbal88/PlotNeuralNet).

# Build the image
```
cd dockerfile-plotneuralnet
docker build -t plotneuralnet .
```

# Run your container with a mounted volume
```
docker run -d -it -v /host/path:/root/shared/folder --name plotneuralnet plotneuralnet
docker ps
```

- The container is run in detached mode with interactive tty
- The container is named plotneuralnet

## Example

Use the current working directory (unix based), mounted to a folder named 'my-folder' in the docker container.

```
docker run -d -it -v `pwd`:/PlotNeuralNet/my-folder --name plotneuralnet plotneuralnet
docker ps
docker exec -it plotneuralnet bash
cd my-folder
bash ../tikzmake.sh file_to_generate
```

The output PDF will be located in the current working directory.

# Generate your neural network visualization
```
# attach bash to the container named plotneuralnet
docker exec -it plotneuralnet bash
cd shared/folder

# Generate the pdf visualization from py file in the current directory (note don't include extension)
bash tikzmake.sh your-file
```