#!/bin/bash
TASK=$1
git pull
git checkout $TASK
git pull origin $TASK

