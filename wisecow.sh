bash
docker build -t nyrahul/wisecow .

docker tag nyrahul/wisecow:latest
docker push nyrahul/wisecow:latest

kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

kubectl create secret tls wisecow-tls --key tls.key --cert tls.crt
