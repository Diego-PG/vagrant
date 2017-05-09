#!/bin/bash

for i in {1..10}
do
	time vagrant up && vagrant destroy -f
done
