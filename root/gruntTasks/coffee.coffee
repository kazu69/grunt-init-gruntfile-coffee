module.exports =
  all:
    expand: true
    flatten: true
    cwd: 'src'
    src: ['**/*.coffee']
    dest: 'tmp/'
    ext: '.js'
