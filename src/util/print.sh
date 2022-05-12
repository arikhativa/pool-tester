#!/bin/sh

print_start_test()
{
	test_name=$1

	echo "Testing $test_name: \n\n"
}

print_fail()
{
	test_name=$1
	vaild_res=$2
	user_res=$3
	
	echo "$test_name\t-\tFail\n\n"
	echo "expected output:\n"
	echo "\t'$vaild_res'\n"
	echo "user  output:\n"
	echo "\t'$user_res'\n"
}

print_success()
{
	test_name=$1

	echo "$test_name\t-\t Success!\n" 
}