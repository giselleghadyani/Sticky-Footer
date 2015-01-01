module.exports = (grunt) ->


	##-------------------------------------
	## Project Configuration
	##--------------------------------------

	@initConfig
		pkg: @file.readJSON 'package.json'


	##--------------------------------------
	## Config Tasks
	##--------------------------------------

	@loadTasks 'grunt'


	##--------------------------------------
	## Plugin Loading
	##--------------------------------------

	require('time-grunt')(@)
	require('load-grunt-tasks')(@)
