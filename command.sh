#!/bin/bash -x
# initialize_tsm_cmd=("${install_dir}/packages/scripts.${version_string}/initialize-tsm")
# echo $initialize_tsm_cmd

# [ -n "abc" ] && initialize_tsm_cmd+="success"

# echo $initialize_tsm_cmd

# MY_SHELL="bash"

# if [ $MY_SHELL = "bash" ]
#  then
#     echo "Test success for $MY_SHELL"
# fi
# # for loop

# NODES="node1 node2 node3"

# for NODE in $NODES
#  do
#     echo "node : $NODE"
# done

# ALL_FILES=$(ls)
# for FILE in $ALL_FILES
# do 
#     echo "File is $FILE"
# done

# Parameter

# echo "Excuting script : $0"

# for PARAM in $@
# do
#  echo "PARAM is : $PARAM"
# done

# host_name=$(hostname)
# echo "Host name : $host_name"

# HOST="$1"
# ping -c 1 $HOST

# if [ "$?" -eq "0" ]
# then
#  echo "$HOST is reachable"
# else
#  echo "$HOST is not reachable"
# fi

# hello() {
#      local TEST="Manish"
#     echo "$TEST"

# }

# helloagain(){
#     echo "$TEST"
# }

# hello
# helloagain

# ${variable}	This command substitutes the value of the variable.
# ${variable:-word}	If a variable is null or if it is not set, word is substituted for variable. The value of the variable does not change.
# ${variable:=word}	If a variable is null or if it is not set, the value of the variable is set to word.
# ${variable:?message}	If a variable is null or if it is not set, the message is printed to the standard bash error.
# ${variable:+word}	If variable is set, word is substituted for variable. However, the value of the variable itself does not change.

# -z string - True if the string length is zero.
# -n string - True if the string length is non-zero.

# LINE_NUM=1

# while read LINE
# do
#     echo "${LINE_NUM} : $LINE" 
#     ((LINE_NUM++))
# done < ./tableau_install.sh 

# check_arguments(){

   # echo "Check argument"

    # for arg in "$@"
    #  do 
    #     echo "Param : $arg"
    #  done


#     while getopts u:p:l OPTION
#     do
#         case ${OPTION} in 
#         u)
#             user_name="${OPTARG}"
#             echo "User name: $user_name"
#             ;;
#         p)
#             password="${OPTARG}"
#             echo "password: $password"
#             ;;
#         l)
#             loc="${OPTARG}"
#             echo "Location : $loc"
#             ;;
#         ?)
#             echo "Invalid"
#             ;;
#         esac
#     done

# }

# main (){
    
#     echo "Main "

#    local user_name=''
#    local password=''
#    local loc=''

#     check_arguments "$@"
   
# }

# main "$@"


# while getopts "abc:" flag
# do
#     echo "$flag" "${OPTARG}" "${OPTIND}"
# done



# set -e
# set -u
# set -o pipefail

# while getopts 'lha:' OPTION; do
#   case "$OPTION" in
#     l)
#       echo "linuxconfig"
#       ;;

#     h)
#       echo "h stands for h"
#       ;;

#     a)
#       avalue="$OPTARG"
#       echo "The value provided is $OPTARG"
#       ;;
#     ?)
#       echo "script usage: $(basename \$0) [-l] [-h] [-a somevalue]" >&2
#       exit 1
#       ;;
#   esac
# done
# shift "$(($OPTIND -1))"

# echo $UID

# echo $(ID -un)

# if [ "Manish" == "Manish" ]
# # then
# # echo "Root"; exit 1
# # fi

# # Check if script is being run with root access


# echo "Using running is $(ID -un)"

# # Check root access 
# if [[ ${UID} -ne 0 ]]
# then echo "Scripting not running with root. Cant proceed ....."
# exit 1
# fi

# # Get the user name
# read -p "Please enter the userid : " USER_LOGIN
# read -p "Please enter the user name :" USER_NAME
# read -p "Please enter the password : " USER_PASSWD

# # create user with above details

# useradd -m "${USER_LOGIN}" -c "${USER_NAME}"

# if [ "$?" -eq 0 ]
#     then 
#     echo "User create successfully...setting password"
#     echo "${USER_PASSWD}" | passwd -stdin ${USER_LOGIN}
#     [ $? -eq 0 ] && echo "password set successully" && exit 0
#     exit 1
# fi

# exit 1


# if [ condition ]

# [ is another name for the traditional test command. [ / test is a standard POSIX utility. All POSIX shells have it builtin (though that's not required by POSIX²). The test command sets an exit code and the if statement acts accordingly. Typical tests are whether a file exists or one number is equal to another.

# if [[ condition ]]

# This is a new upgraded variation on test¹ from ksh that bash, zsh, yash, busybox sh also support. This [[ ... ]] construct also sets an exit code and the if statement acts accordingly. Among its extended features, it can test whether a string matches a wildcard pattern (not in busybox sh).

# if ((condition))

# Another ksh extension that bash and zsh also support. This performs arithmetic. As the result of the arithmetic, an exit code is set and the if statement acts accordingly. It returns an exit code of zero (true) if the result of the arithmetic calculation is nonzero. Like [[...]], this form is not POSIX and therefore not portable.

# if (command)

# This runs command in a subshell. When command completes, it sets an exit code and the if statement acts accordingly.

# A typical reason for using a subshell like this is to limit side-effects of command if command required variable assignments or other changes to the shell's environment. Such changes do not remain after the subshell completes.

# if command

# command is executed and the if statement acts according to its exit code.

# test() {
#  initialize_tsm_cmd=("${install_dir}/packages/scripts.${version_string}/initialize-tsm")

#   [ 0 -eq 0                    ] && initialize_tsm_cmd+=("--accepteula")

#   echo "${initialize_tsm_cmd}"

#   # "${initialize_tsm_cmd[@]}"
# }

# main() {

#     install_dir=/app
#     version_string=10.2

#     test
    
# }

# main

echo "Value of OPTIND = ${OPTIND}"
while getopts a:bc:-: OPTION
do
    case ${OPTION} in
    a)
    echo "Value of a at ${OPTIND} : ${OPTARG}"
    ;;
    b)
    echo "Setting B as True at ${OPTIND}"
    ;;
    c)
    echo "Value of c at ${OPTIND}: ${OPTARG}"
    ;;
    -)
    echo "Reading - at ${OPTIND}: ${OPTARG}"
    ;;
    ?)
    echo "Refer help section"
    ;;
    esac
done




