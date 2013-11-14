activate :gzip
activate :livereload
activate :syntax
activate :directory_indexes

set :markdown, fenced_code_blocks: true
set :markdown_engine, :redcarpet

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.method       = :git
  deploy.branch       = 'master'
  deploy.build_before = true
end
