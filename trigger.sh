#!/bin/bash
chmod 400 id_rsa_flask.pem
git checkout main
date >> trigger
git add .
git commit -m "flask-cicd-build"
GIT_SSH_COMMAND="ssh -i id_rsa_flask.pem" git push origin main
