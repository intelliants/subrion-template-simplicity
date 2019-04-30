var fs           = require("fs"),
    path         = require('path'),
    serverConf   = (fs.existsSync('./config.json')) ? require('./config.json').server : null,
    gulp         = require("gulp"),
    gutil        = require('gulp-util'),
    notify       = require("gulp-notify"),
    concat       = require("gulp-concat"),
    imagemin     = require("gulp-imagemin"),
    sass         = require('gulp-sass'),
    sourcemaps   = require('gulp-sourcemaps'),
    cleanCSS     = require('gulp-clean-css'),
    autoprefixer = require('gulp-autoprefixer'),
    browserSync  = require('browser-sync').create();

sass.compiler = require('node-sass');

var config = {
  paths: {
    images: {
      src:  ["img/**/*.jpg", "img/**/*.jpeg", "img/**/*.png"],
      dest: "img"
    },
    sass: {
      path: "scss/**/*.scss",
      src: {
        dev: [
          "scss/iabootstrap.scss",
        ],
        prod: [
          "scss/iabootstrap.scss",
          "scss/ckeditor.scss"
        ]
      },
      dest: "css"
    }
  }
};

gulp.task("images", function() {
  return gulp.src(config.paths.images.src)
    .pipe(imagemin({
      progressive: true,
      interlaced: true
    }))
    .pipe(gulp.dest(config.paths.images.dest));
});

gulp.task("sass-dev", function(){
  return gulp.src(config.paths.sass.src.dev)
    .pipe(sourcemaps.init())
    .pipe(sass().on('error', function(err) {
        gutil.log(err);
        this.emit('end');
    }))
    .pipe(sourcemaps.write())
    .pipe(gulp.dest(config.paths.sass.dest))
    .pipe(notify({
      sound: true,
      title: "Yay! SASS compiled! =)",
      message: "File: <%= file.relative %>",
      icon: path.join(__dirname, "docs/img/icon.png")
    }))
    .pipe(browserSync.stream());
});

gulp.task('sass', function () {
    return gulp.src(config.paths.sass.src.prod)
        .pipe(sass().on('error', function(err) {
            gutil.log(err);
            this.emit('end');
        }))
        .pipe(autoprefixer({
            browsers: ['last 2 versions'],
            cascade: false
        }))
        .pipe(cleanCSS({
            advanced: false,
            processImport: false
        }))
        .pipe(gulp.dest(config.paths.sass.dest));
});

gulp.task('browser-sync', function() {
  if (serverConf !== null) {
    browserSync.init(serverConf);
  } else {
    console.log('\x1b[31m', '***\nBrowserSync config not specified.\nRunning without livereload...\n***' ,'\x1b[0m');
  }
});

gulp.task("build", ["sass", "images"]);

gulp.task("watch", function() {
  gulp.watch(config.paths.sass.path, ["sass-dev"]);
});

gulp.task("dev", ["sass-dev", "images", "browser-sync", "watch"]);

gulp.task("default", function() {
  console.log('Silence is gold');
});