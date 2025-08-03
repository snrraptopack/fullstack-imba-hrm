import express from 'express'
import index from "./index.html"
import {hrm} from "./hrm"

const app = new express()

const posts = [
	{ id: '1', title: 'First Post', content: 'This is the first post.' },
	{ id: '2', title: 'Second Post', content: 'This is the second post.' },
	{ id: '3', title: 'Third Post', content: 'This is the third post.' }
]

# API route to get all posts with artificial delay
app.get '/api/posts' do(req, res)
	# Add 2 second delay to simulate slow network
	setTimeout(&,0) do
		res.json(posts)

# API route to get a single post by ID with artificial delay
app.get '/api/posts/:id' do(req, res)
	# Add 1.5 second delay to simulate slow network
	setTimeout(&,0) do
		const post = posts.find do(p) p.id == req.params.id
		if post
			res.json(post)
		else
			res.status(404).json({ message: 'Post not found' })
	

hrm app

