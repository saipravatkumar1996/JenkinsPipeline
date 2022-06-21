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
      

      bat "docker build -f Dockerfile -t jenkisnappfile ."
      bat "docker container run -d --name jenkisnappfile -p 8989:8989 jenkisnappfile"
      bat "docker login -u pravat199665 -p Saibaba@91"
      bat "docker tag jenkisnappfile jenkisnappfile"
      bat "docker push pravat199665/jenkisnappfile"
      bat "docker logout"
      
    }
  }

  
}

}
