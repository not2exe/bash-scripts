hello() {
  echo "Hello, $1"
}

sum() {
  echo $(( $1 + $2 ))
}

hello "Man"
echo "$(sum 20 7)"
