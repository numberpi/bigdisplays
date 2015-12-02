accessing
spawnNextInputWindow
	InputTestWindowModel openWithRandomTask
		when: #inputTestCorrect
		send: #spawnNextInputWindow
		to: self