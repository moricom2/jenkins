# jenkins image build & push
docker build -t moricom/jenkins .\
docker push moricom/jenkins

# jenkins defalut run 
docker run -d -p 8080:8080 -p 5000:5000 --name jenkins moricom/jenkins

# jenkins docker in docker
docker run -d -p 8080:8080 -p 5000:5000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker --name jenkins moricom/jenkins

# jenkins volume share example
docker run -d -p 8080:8080 -p 5000:5000 -v /workspace/jenkins/share:/var/jenkins_home --name jenkins moricom/jenkins

# jenkins docker in docker && volume share example
docker run -d -p 8080:8080 -p 5000:5000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v /workspace/jenkins/share:/var/jenkins_home --name jenkins moricom/jenkins

default ID: admin\
default PW: admin
