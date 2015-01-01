module.exports = (grunt) ->


	##--------------------------------------
	## Main Executable Build Tasks
	##--------------------------------------

	# Default
	@registerTask 'default', [
		'configureRewriteRules'
		'connect:main'
	]
