

export tag Post
	prop post = {}
	prop route

	def routed params,state
		
		if state.post
			post = state.post
			console.log "reuse"
		else
			const req = await window.fetch("/api/posts/{params.id}")
			const res = await req.json!
			state.post = res
			post = res	
			console.log "new fetch"

	def render
		<self[o@suspended:0.4]>
			<h1> post.title
			<p> post.content	