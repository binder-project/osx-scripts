minikube stop && minikube start
screen kubectl proxy --port=8085
binder-control start-service db
binder-control start-service logging
binder-control deploy-kubernetes start --api-key=63a2ac3b89c70e666a8a383a510e828b
binder-control web start --api-key=63a2ac3b89c70e666a8a383a510e828b
eval $(minikube docker-env)
binder-control build start --api-key=63a2ac3b89c70e666a8a383a510e828b
