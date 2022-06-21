pipeline{
agent any

stages{
  stage('Build'){
     steps{
      echo "Building the Code......."
      bat "mvn clean"
    }
  }
stage('Test'){
     steps{
      echo "Test the project......."
       bat "mvn test"
    }
  }
stage('Compile'){
     steps{
      echo "Test the project......."
       bat "mvn compile"
    }
  }
stage('Deploy'){
     steps{
      echo "deploy the project......."
     bat "mvn install"
    }
  }
  stage('Create Docker Image'){
    steps{
      bat "docker login -u pravat199665 -p Saibaba@91 docker.io; docker stop jenkisnappfile; docker system prune -a -f; docker container run -d --name jenkisnappfile -p 8989:8989 jenkisnappfile;docker tag jenkisnappfile pravat199665/jenkisnappfile ; docker push pravat199665/jenkisnappfile; docker logout"
    }
  }

  
}

}
