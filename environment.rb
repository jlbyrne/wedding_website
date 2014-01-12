# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

#require gems
require 'rubygems'

#require ruby modules
require 'uri'
require 'pathname'
require 'logger'

#gems for database
require 'pg'
require 'active_record'

#gems for sinatra
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'

#modules/gems for webpages
require 'erb'

#defining the root folder
APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

#requiring all controller and helper files
Dir[APP_ROOT.join('controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('helpers', '*.rb')].each { |file| require file }

#setting up database and models
# Log queries to STDOUT in development- this will show when
# the app is accessing the database in the server logs
if Sinatra::Application.development?
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

#requiring all the model files
Dir[APP_ROOT.join('models', '*.rb')].each { |file| require file }

# Heroku controls what database the app connects to by setting the DATABASE_URL 
# environment variable. The app needs to respect that if it wants to run on Heroku.
db = URI.parse(ENV['DATABASE_URL'] || "postgres://localhost/#{APP_NAME}_#{Sinatra::Application.environment}")
DB_NAME = db.path[1..-1]

#connecting activerecord to our database.  This step is necessary (and is not
# seen on the sinatra/activerecord documentation) because we are using 
# postgres and not sqlite3
ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :port     => db.port,
  :username => db.user,
  :password => db.password,
  :database => DB_NAME,
  :encoding => 'utf8'
)