module.exports =
  all:
    expand: true
    flatten: true
    cwd: 'coffee'
    src: ['**/*.coffee']
    dest: 'tmp/'
    ext: '.js'
