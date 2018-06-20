require 'pg'

if ENV['RACK_ENV'] != 'production'
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new :spec

  task default: [:spec]
end

task :setup do
  # p "Creating databases..."

  ['makersbnb', 'makersbnb_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{database};")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE spaces(id SERIAL PRIMARY KEY,
      name_of_space VARCHAR(30) UNIQUE,
      email VARCHAR(60),
      description VARCHAR(1000));")
    connection.exec("CREATE TABLE requests(id SERIAL PRIMARY KEY,
      space_id INTEGER REFERENCES spaces (id),
      body VARCHAR(1000),
      email VARCHAR(60),
      timestamp TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT
      (CURRENT_TIMESTAMP AT TIME ZONE 'UTC'));")
    connection.exec("CREATE TABLE users (id SERIAL PRIMARY KEY,
      email VARCHAR(60) UNIQUE, password VARCHAR(60),
      name VARCHAR(60), username VARCHAR(60) UNIQUE);")
  end
end

task :test_database_setup do
  # p "Cleaning the database..."

  connection = PG.connect(dbname: 'makersbnb_test')

  connection.exec("TRUNCATE spaces,requests, users RESTART IDENTITY;")
  # connection.exec("TRUNCATE requests RESTART IDENTITY;")
  connection.close
end

task :teardown do
  p "Destroying databases... type 'y' to destroy the makersbnb databases."

  confirm = STDIN.gets.chomp
  return unless confirm == 'y'

  ['makersbnb', 'makersbnb_test'].each do |database|
    connection = PG.connect
    connection.exec("DROP DATABASE #{database}")
  end
end
