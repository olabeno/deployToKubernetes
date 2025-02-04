# deployToKubernetes
The Github implements a CI/CD pipeline entirely within its ecosystem
The Github repo contains application, Dockerfile, kubernetes manifest and github action( the continuous integration tool)
In addition to the repo, there is a Github registry that stores software artifacts like binary files, docker images etc.
A token must be created to access the registery in the github action workflow.
One or more test branches can be created from the main repo and any file commit in any of the branches will trigger off the CI/CD pipeline.


Contents of the repo:
  k8s/manifest.yaml - k8s manifest to deploy containers in kubernetes
  Dockerfile -  to dockerize the application which is stored as an image in the registry
  entrypoint.sh - is a shell script which simulates a simple application
  
Contentent of the packages
  Container registry: deploytokubernetes/echo-app  - pulled into the minikube kubernetes cluster via the manifest

Github Secretes variable: GITREGPAT containing the Personal Access Token for read and write access to the container registry
