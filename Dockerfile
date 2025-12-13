FROM jekyll/jekyll:latest

EXPOSE 4000 35729

ENTRYPOINT ["jekyll", "serve", "--force_polling", "--livereload", "--host", "0.0.0.0"]
