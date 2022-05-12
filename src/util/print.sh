#!/bin/sh

print_start_test()
{
	test_name=$1

	printf "Testing $test_name: \n\n"
}

print_fail()
{
	test_name=$1
	vaild_res=$2
	user_res=$3
	
	printf "$test_name\t-\tFail\n\n"
	printf "expected output:\n"
	printf "\t'$vaild_res'\n"
	printf "user  output:\n"
	printf "\t'$user_res'\n"
}

print_success()
{
	test_name=$1

	printf "$test_name\t-\t Success!\n" 
}