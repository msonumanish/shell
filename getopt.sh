 #!/bin/bash
 
# This script named getopts_understanding.sh is used
# to better understand how getopts works
 
# LEARNED: Arguments to options must go after the option. There can be no
# spaces between option an argument for the option
# For example> ./getopts_understanding.sh -vlsghr 5 6 sd gh jk lm hu
# ving..
# Next argument to process: 1
# Argument to option v is 
# ling..
# Next argument to process: 2
# Argument to option l is sghr
# The remaining positional parameters: 5 6 sd gh jk lm hu
# (Note how sghr was considered de argument to option l)
 
# LEARNED: OPTIND points to the next argument that is going to be processed
# Note how one option has a mandatory argument next argument points not to this
# option's argument but to the next argument
# For example> ./getopts_understanding.sh -vl 5 -s -h 6 -r h jk lm hu
# ving..
# Next argument to process: 1
# Argument to option v is 
# ling..
# Next argument to process: 3
# Argument to option l is 5
# sing..
# Next argument to process: 4
# Argument to option s is 
# hing..
# Next argument to process: 6
# Argument to option h is 6
# ring..
# Next argument to process: 7
# Argument to option r is 
# The remaining positional parameters: h jk lm hu
 
# LEARNED: When you specify an incorrect option it will processed and OPTARG is given
# its vaue. If you don't manage this situation is simply is discarded and getopts continues
# For example> ./getopts_understanding.sh -vl 5 -st -h 6 -r jk lm hu
# ving..
# Next argument to process: 1
# Argument to option v is 
# ling..
# Next argument to process: 3
# Argument to option l is 5
# sing..
# Next argument to process: 3
# Argument to option s is 
# ?ing.. (--> here we've arrived to t option which is not valid)
# Next argument to process: 4
# Argument to option ? is t (OPTARG is set to this incorrect option)
# hing.. (Continue)
# Next argument to process: 6
# Argument to option h is 6
# ring..
# Next argument to process: 7
# Argument to option r is 
# The remaining positional parameters: jk lm hu

while getopts :vl:sgh:r OPTION
do
  case ${OPTION} in
    v)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    l)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    s)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    g)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    h)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    ?)
      echo "${OPTION}ing.."
      echo "Next argument to process: ${OPTIND}"
      echo "Argument to option ${OPTION} is ${OPTARG}"
      ;;
    esac
done
 
shift $((OPTIND - 1))
echo "The remaining positional parameters: ${@}"
 
 
exit 0