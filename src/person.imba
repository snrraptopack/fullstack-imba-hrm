

export tag Person
	prop route

	def routed params,state
		const res = await window.fetch("/api{params.path}")
		data = await res.json!
		console.log data

	<self>
		
		<h1> "The Person pages {data.message}"
	


tag Random

	def routed
		console.log "yes"

	<self>
		<h1> "here"	