#!/bin/bash




process_lines() # $1= pattern $2 startline $3 endline $4 file to extract from 
{
	local -n startline=$2
	#echo "${startline[@]}"
	local -n endline=$3
	#echo "${endline[@]}"
	filecount=1
	dirname=$(echo "$pattern" | sed 's/ /_/')
	mkdir -p "$dirname"
	for i in "${!startline[@]}"; do
		start="${startline[i]}"
		end="${endline[i]}"
		#echo "$start"
		#echo "$end"
		text_from_program=$(sed -n "$start","$end"p $4)
		#echo "$text_from_program"
		echo "$text_from_program" > "$dirname/$1_$filecount.txt"
		filecount=$[filecount + 1]
	done
}

if [ $# -ne 2 ]; then
   echo "error: expecting discopop analyzer output file, followed by file to extract loops from (.c or .cc), of the form"
   echo "./extract_output.sh <discopop_analyzer_output>.txt <file>.c"
   echo ""
   echo "note: you need to save your discopop anaylzer output by redirecting it to a file (instead of the console) as it runs"
   echo "example: python3 -m discopop_explorer --dep-file=<filename>_dep.txt > <discopop_analyzer_output>.txt"  
else
   
   IFS=$'\n'
   patterns=("Reduction" "Pipeline" "Do-all" "Geometric Decomposition" "Task Parallelism")
   for pattern in "${patterns[@]}"
   do
#	echo "$pattern"
   	if [ "$pattern" == "Pipeline" ]; then
        	startline_raw=$(cat $1| sed -n "/$pattern at:/{n;n;p;}")
                p_startline=( $(echo "$startline_raw" | sed -E 's/Start line: [0-9]+://g') )
   		endline_raw=$(cat $1 | sed -n "/$pattern at:/{n;n;n;p;}")
                p_endline=( $(echo "$endline_raw" | sed -E 's/End line: [0-9]+://g') )

   	else
   	        startline_raw=$(cat $1| sed -n "/$pattern at:/{n;p;}")
		p_startline=( $(echo "$startline_raw" | sed -E 's/Start line: [0-9]+://g') )
   		endline_raw=$(cat $1 | sed -n "/$pattern at:/{n;n;p;}")
                p_endline=( $(echo "$endline_raw" | sed -E 's/End line: [0-9]+://g') )

	fi
#	echo "${p_startline[@]}"
#	echo "${p_endline[@]}"
	
	if [ ${#p_startline[@]} -gt 0 ]; then
		process_lines $pattern p_startline p_endline $2
		if [ $? -eq 0 ]; then 
			echo "loops extracted for $pattern" 
		else
			echo "something went wrong"
		fi
	else
		echo "no loops to extract for $pattern" 

	fi

   done
fi
