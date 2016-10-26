[![Build Status](https://travis-ci.org/tandrewnichols/grunt-simple-imagemagick.png)](https://travis-ci.org/tandrewnichols/grunt-simple-imagemagick) [![downloads](http://img.shields.io/npm/dm/grunt-simple-imagemagick.svg)](https://npmjs.org/package/grunt-simple-imagemagick) [![npm](http://img.shields.io/npm/v/grunt-simple-imagemagick.svg)](https://npmjs.org/package/grunt-simple-imagemagick) [![Code Climate](https://codeclimate.com/github/tandrewnichols/grunt-simple-imagemagick/badges/gpa.svg)](https://codeclimate.com/github/tandrewnichols/grunt-simple-imagemagick) [![Test Coverage](https://codeclimate.com/github/tandrewnichols/grunt-simple-imagemagick/badges/coverage.svg)](https://codeclimate.com/github/tandrewnichols/grunt-simple-imagemagick) [![dependencies](https://david-dm.org/tandrewnichols/grunt-simple-imagemagick.png)](https://david-dm.org/tandrewnichols/grunt-simple-imagemagick)

# grunt-simple-imagemagick

A grunt wrapper for Image Magick

## Getting Started

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```bash
npm install grunt-simple-imagemagick --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```javascript
grunt.loadNpmTasks('grunt-simple-imagemagick');
```

Alternatively, install [task-master](http://github.com/tandrewnichols/task-master) and let it manage this for you.

## The "imagemagick" task

### Overview

The `imagemagick` task is a multiTask, where the target is the image magick command to run. You can configure as many commands as are useful to you either in your `grunt.initConfig` call or, as mentioned above, by using [task-master](https://github.com/tandrewnichols/task-master). Options to the imagemagick binary go under options. However, the special key `simple` indicates how this task should be run. See the examples below or the documentation for [simple-cli](https://github.com/tandrewnichols/simple-cli).

### Examples

```
grunt.initConfig({
  imagemagick: {
    mogrify: {
      resize: '100x100',
      rawArgs: 'app/img/*.png'
    }
  }
});
```

Unlike most simple-cli wrapped grunt tasks, image magick is _really_ complicated, and you can do _a lot_ of stuff. I can't guarantee that it will all work correctly as `simple-cli` wasn't created to handle anything this complex. At the least, however, if a particular command is not working, you should able to get it working by simply passing _all arguments_ as `args`. E.g.

```
grunt.initConfig({
  imagemagick: {
    convert: ['-size', '320x85', 'canvas:none', '-font', 'Bookman-DemiItalic', '-pointsize', '72', '-draw', "text 25,60 'Magick'", '-channel', 'RGBA', '-blur', '0x6', '-fill', 'darkred', '-stroke', 'magenta', '-draw', "text 20,55 'Magick'", 'fuzzy-magick.png']
  }
});

// or

grunt.initConfig({
  imagemagick: {
    convert: {
      args: ['-size', '320x85', 'canvas:none', '-font', 'Bookman-DemiItalic', '-pointsize', '72', '-draw', "text 25,60 'Magick'", '-channel', 'RGBA', '-blur', '0x6', '-fill', 'darkred', '-stroke', 'magenta', '-draw', "text 20,55 'Magick'", 'fuzzy-magick.png']
    }
  }
});
```

Not pretty, but it should get the job done.

## Contributing

Please see [the contribution guidelines](CONTRIBUTING.md).
