#!/bin/sh

print_start_project()
{
	project_name=$1

	echo "\nTesting project $project_name\n"
}

print_compile_error()
{
	test_name=$1

	echo "\n$test_name\t-\tFailed to compile\n" 
}

print_norm_error()
{
	test_name=$1

	echo "\n$test_name\t-\tNot following the norm\n" 
}

print_fail()
{
	test_name=$1
	vaild_res_path=$2
	user_res_path=$3
	
	echo "$test_name\t-\tFail\n\n"
	echo "expected output:\n"
	echo "\t'$(cat $vaild_res_path)'\n"
	echo "user  output:\n"
	echo "\t'$(cat $user_res_path)'\n"
}

print_success()
{
	test_name=$1

	echo "$test_name\t-\t Success!\n" 
}