import fs from 'fs/promises'
import path from 'path'
import index from "./index.html"

export def hrm app
	const port = process.env.PORT or 3000

	# Dynamically import vite
	const { createServer: createViteServer } = await import('vite')

	const vite = await createViteServer({
		server: { middlewareMode: true },
		appType: 'custom'
	})

	# Use vite's connect instance as middleware
	app.use(vite.middlewares)

	app.get /^\/(?!api).*/ do(req, res, next)
		try
			const template = await fs.readFile(path.resolve('./index.html'), 'utf-8')
			const html = await vite.transformIndexHtml(req.originalUrl, template)
			res.status(200).set({ 'Content-Type': 'text/html' }).end(html)
		catch e
			vite.ssrFixStacktrace(e)
			return next(e)

	app.listen(port) do
		console.log(`> Server listening at http://localhost:{port}`)


