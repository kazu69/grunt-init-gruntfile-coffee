###
{%= name %}
{%= homepage %}

Copyright (c) {%= grunt.template.today('yyyy') %} {%= author_name %}
Licensed under the {%= licenses.join(', ') %} license{%= licenses.length === 1 ? '' : 's' %}.
###

module.exports = (grunt) ->
  'use strict'
  path = require('path')

  # load all grunt tasks matching the `grunt-*` pattern
  require('load-grunt-config') grunt,
    configPath: path.join(process.cwd(), 'gruntTasks')
    init: true
    config:
      test: false
    loadGruntTasks:
      config: require('./package.json')
      scope: [
        'devDependencies'
        'dependencies'
      ]
      pattern: ['grunt-*']
