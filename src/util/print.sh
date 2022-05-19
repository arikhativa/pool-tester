#!/bin/bash

print_start_project()
{
	project_name=$1

	printf "\n -- Testing project $project_name -- \n\n"
}

print_compile_error()
{
	test_name=$1

	printf "$test_name\t-\tFailed to compile\n" 
}

print_norm_error()
{
	test_name=$1

	printf "$test_name\t-\tNot following the norm\n" 
}

print_valgrind_error()
{
	test_name=$1

	printf "$test_name\t-\tValgrind found a memory leak\n" 
}

print_file_error()
{
	test_name=$1

	printf "$test_name\t-\tToo many / missing files in dir\n" 
}

print_fail()
{
	test_name=$1
	vaild_res_path=$2
	user_res_path=$3
	
	printf "$test_name\t-\tFail\n\n"
	printf "expected output:\n"
	printf "\t'$(cat $vaild_res_path)'\n"
	printf "user  output:\n"
	printf "\t'$(cat $user_res_path)'\n"
}

print_success()
{
	test_name=$1

	printf "$test_name\t-\t Success!\n" 
}

print_norminette_not_installed()
{
	printf "Norminette Error:\n\tapp is not installed!\n\n"
}

print_valgrind_not_installed()
{
	printf "Valgrind Error:\n\tapp is not installed!\n\n"
}