# grunt-init-gruntfile
# https://gruntjs.com/
#
# Copyright (c) 2012 "Cowboy" Ben Alman, contributors
# Licensed under the MIT license.
#

'use strict'

# Basic template description.
exports.description = 'Create a basic Gruntfile.coffee'

# Template-specific notes to be displayed before question prompts.
exports.notes = 'This template tries to guess file and directory paths, but ' +
  'you will most likely need to edit the generated Gruntfile.js file before ' +
  'running grunt. _If you run grunt after generating the Gruntfile, and ' +
  'it exits with errors, edit the file!_';

# Any existing file or directory matching this wildcard will cause a warning.
exports.warnOn = 'Gruntfile.coffee'

# The actual init template.
exports.template = (grunt, init, done) ->

  init.process {}, [
    # Prompt for these values.
    init.prompt 'name'
    init.prompt 'description'
    init.prompt 'version'
    init.prompt 'repository'
    init.prompt 'homepage'
    init.prompt 'bugs'
    init.prompt 'licenses'
    init.prompt 'author_name'
    init.prompt 'author_email'
    init.prompt 'author_url'
    init.prompt 'grunt_version'
    init.prompt 'node_version', '>= 0.10.0'
    init.prompt 'main', 'index.js'
  ], (err, props) ->
    props.keywords = [] # Will create the keywords attribute in package.json
    props.devDependencies = # Development dependencies for this project
      'grunt': '~0.4.2'
      'grunt-este-watch': '~0.1.15'
      'grunt-contrib-coffee': '~0.10.0'
      'grunt-coffeelint': '~0.0.8'
      'grunt-contrib-concat': '~0.1.2'
      'grunt-contrib-uglify': '~0.3.2'
      'grunt-notify': '~0.2.17'
      'grunt-contrib-clean': '~0.5.0'
      'load-grunt-config': '~0.7.1'
      'time-grunt': '~0.2.9'
      'grunt-newer': '~0.6.1'

    # Files to copy (and process).
    files = init.filesToCopy props

    # Add properly-named license files.
    init.addLicenseFiles files, props.licenses

    # Actually copy (and process) files.
    init.copyAndProcess files, props

    init.writePackageJSON 'package.json', props

    # All done!
    done()
