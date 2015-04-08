module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)
  path = require('path')
  pkg = grunt.file.readJSON('package.json')

  grunt.initConfig
    pkg: pkg
    clean:
      all:
        dot: true
        files:
          src: ["bin/*"]

    copy:
      assets:
        files: [
          src:    ["**/*.*", "!**/*.ls"]
          cwd:    "src/"
          dest:   "bin/"
          expand: true
        ]

    livescript:
      options:
        bare: false
      index:
        expand: true
        cwd: "src/"
        src: ["S*/index.ls", "server.ls"]
        dest: "bin/"
        ext: ".js"

    express:
      custom:
        options:
          server: path.resolve('bin/server')
          bases: [path.resolve('bin')]
          livereload: true
          serverreload: false

<<<<<<< HEAD
    open:
      dev:
        url: 'http://localhost:3000/S1/index.html'

=======
>>>>>>> origin/master
    delta:
      #options:
      #  livereload: false

      #livescript:
      #  files: ["src/**/*.ls"]
      #  tasks: ["newer:livescript"]

      #sass:
      #  files: ["src/**/*.sass"]
      #  tasks: ["newer:sass", "concat"]

      #appCode:
      #  files: ["src/**/*.*", "!src/**/**.{ls,sass}"]
      #  tasks: ["newer:copy:appCode"]

      #express:
      #  files: ["bin/**/*.*", "!bin/vendor/**/*"]
      #  tasks: []
      #  options:
      #    livereload: true

      #grunt:
      #  files: ['Gruntfile.coffee']
      options:
        liverelode:
          true
      all:
        files:    ['src/**/*.*']
        tasks:    ['newer:copy', 'newer:livescript']
      express:
        files: ["bin/**/*.*", "!bin/server.js"]
        tasks: []
        options:
          livereload: 3001

  grunt.renameTask "watch", "delta"

  grunt.registerTask "default", [
    "clean"
    "copy"
    "livescript"
    "express"
<<<<<<< HEAD
    "open"
=======
>>>>>>> origin/master
    "delta"
  ]

  grunt.registerTask "watch", [
    "clean"
    "copy"
    "livescript"
    "express"
<<<<<<< HEAD
    "open"
=======
>>>>>>> origin/master
    "delta"
  ]
