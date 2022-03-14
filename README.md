# plantuml_docker

A docker container for [PlantUML](https://plantuml.com/). Inspired by [lindt/docker_plantuml](https://github.com/lindt/docker_plantuml)
The author of the original project do not accept PRs, so I created a new repo and an image with the latest version of
PlantUML.

## Usage

```
cat diagram.uml | docker run --rm -i zhulik/plantuml > test.svg
```

The default will output svg. If png output is wanted, call it like this:

```
cat diagram.uml | docker run --rm -i zhulik/plantuml -tpng > test.png
```
