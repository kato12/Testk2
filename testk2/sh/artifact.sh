#!/bin/bash

git config --local user.name kurebayashi.takashi
git config --local user.email "kurebayashi.takashi@ricksoft.jp"
if [ -e "Test_Exec_art.out" ] ; then
	echo "out file is exist"
	\cp -f $1 Test_Exec_art.out
	git commit --author='guestrs <kurebayashi.takashi@ricksoft.jp>' -m "update out file" Test_Exec_art.out
else
	echo "out file is not exist"
	\cp -f $1 Test_Exec_art.out
	pwd
	git status
	echo "git add"
	git add Test_Exec_art.out
	pwd
	git status
	echo "git commit"
	git commit --author='guestrs <kurebayashi.takashi@ricksoft.jp>' -m "add out file" Test_Exec_art.out
	pwd
	git status
fi

echo "git push"
git push -u origin master
pwd
git status
