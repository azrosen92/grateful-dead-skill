#!/usr/bin/env bash

rm index.zip
cd src
zip -X -r ../index.zip *
cd ..
aws lambda update-function-code --function-name arn:aws:lambda:us-east-1:273169222458:function:gratefulDeadPlayer  --zip-file fileb://index.zip

