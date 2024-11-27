pipeline{
agent any 
stages{
stage('Build')
{
steps{
script{
//build your docker image
bat 'docker build -t my-nodejs-app .'
}
}
}
stage('Test')
{
steps{
script{
//Run tests here if you have any
echo 'Running tests...'
}
}
}
stage('Build')
{
steps{
script{
//Deploy your docker image
echo 'Deploying application...'
}
}
}
