module.exports = ->
  all:
    files:
      src: [ 'src/**/*.coffee' ]

  gruntfile:
    files:
      src: [ 'Gruntfile.coffee' ]

  options:
    no_trailing_whitespace:
      level: 'error'
