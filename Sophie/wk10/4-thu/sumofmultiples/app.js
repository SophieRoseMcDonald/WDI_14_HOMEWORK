var result = 0

for (var i = 1; i <= process.argv[2]; i++){
	if (i % 5 === 0 || i % 3 === 0){
		result += i
	}
}

console.log(result)
