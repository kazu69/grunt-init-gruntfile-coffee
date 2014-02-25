module.exports = ->
  options:
    separator: ';'
    stripBanners: true
  dist:
    src: ['tmp/**/*.js']
    dest: 'javascripts/application.js'
