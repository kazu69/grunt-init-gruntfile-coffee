module.exports = ->
  all:
    files:
      src: [ 'coffee/**/*.coffee' ]

  gruntfile:
    files:
      src: [ 'Gruntfile.coffee' ]

  options:
    no_trailing_whitespace:
      level: 'error'
