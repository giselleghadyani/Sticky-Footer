module.exports = (grunt) ->

	rewriteRulesSnippet = require("grunt-connect-rewrite/lib/utils").rewriteRequest


	##--------------------------------------
	## Connect
	##--------------------------------------

	@config 'connect',
		options:
			debug: true
			keepalive: true
			hostname: 'lol.blog.com'
			port: 80
			base: 'web/'

		rules: [
			from: '/[^\.]+$'
			to: "/index.html"
		]

		main:
			options:
				middleware: (connect, options) ->
					middlewares = []

					# RewriteRules support
					middlewares.push rewriteRulesSnippet
					options.base = [options.base] unless Array.isArray(options.base)
					directory = options.directory or options.base[options.base.length - 1]
					options.base.forEach (base) ->

						# Serve static files.
						middlewares.push connect.static(base)
						return

					# Make directory browse-able.
					middlewares.push connect.directory(directory)
					middlewares

	@loadNpmTasks 'grunt-contrib-connect'
	@loadNpmTasks 'grunt-connect-rewrite'
