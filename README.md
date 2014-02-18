# grunt-init-gruntfile-coffee

> Create a basic Gruntfile.coffee with [grunt-init][].  
> This is a coffeescript fork of [grunt-init-gruntfile][].

[grunt-init]: http://gruntjs.com/project-scaffolding
[grunt-init-gruntfile]: https://github.com/gruntjs/grunt-init-gruntfile

## Installation
If you haven't already done so, install [grunt-init][].

Once grunt-init is installed, place this template in your `~/.grunt-init/`
directory. It's recommended that you use git to clone this template into that
directory, as follows:

```bash
git clone git@github.com:kazu69/grunt-init-gruntfile-coffee.git \
  ~/.grunt-init/gruntfile-coffee
```

_(Windows users, see [the documentation][grunt-init] for the correct destination
directory path)_

## Usage

```
npm install -g grunt-cli grunt-init
```

At the command-line, cd into an empty directory, run this command and follow the
prompts.

```
grunt-init gruntfile-coffee
```

this grunt init file can also be used package.json following files

```
{
  "name": "",
  "version": "0.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "BSD-2-Clause",
  "devDependencies": {
    "grunt": "~0.4.2",
    "grunt-contrib-watch": "~0.5.3",
    "grunt-contrib-coffee": "~0.10.0",
    "load-grunt-tasks": "~0.3.0",
    "time-grunt": "~0.2.9",
    "grunt-newer": "~0.6.1"
  }
}

```

_Note that this template will generate files in the current directory, so be
sure to change to a new directory first if you don't want to overwrite existing
files._
