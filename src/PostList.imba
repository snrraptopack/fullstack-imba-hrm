

export tag PostList
	prop posts = []
	prop route

	def routed
		const res = await window.fetch('/api/posts')
		posts = await res.json()
	
			

	<self[o@suspended:0.4]>
		<h1> "Blog post"
		<ul>
			for post in posts
				<li>
					<a route-to="/posts/{post.id}">	post.title
