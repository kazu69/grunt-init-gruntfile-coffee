module.exports = ->
  all:
    files: [{
      expand: true,
      cwd: 'tmp',
      src: '**/**.js',
      dest: 'tmp'
    }]
  options:
    mangle: false