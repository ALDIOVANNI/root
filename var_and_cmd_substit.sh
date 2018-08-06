echo "Example of unquoted here document, with variable and command substitution"

cat <<EOF
 This text will be fed to the "cat" program as 
 standard input.  It will also have variable
 and command substitutions performed.
 I am logged in as $USERNAME and today is `date`
EOF
echo
echo "Example of quoted here document, with no variable or command substitution"
# The terminating string must be at the start of a line.
cat <<"EndOfInput"
 This text will be fed to the "cat" program as standard
 input.  Since the text string marking the end was quoted, it does not get 
 variable and command subsitutions.
 I am logged in as $USERNAME and today is `date`
EndOfInput
