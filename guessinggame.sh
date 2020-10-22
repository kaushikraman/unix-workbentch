function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pls enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "ur guess is Less then the my number"
        elif [ $number -gt $true_ans ]
        then
            echo "your guess is Greater then the my number"
        else
            echo " congratulation,you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
