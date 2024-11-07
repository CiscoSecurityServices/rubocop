# frozen_string_literal: true

require 'rubocop/rake_task'

task default: [:rubocop, :test]

RuboCop::RakeTask.new(:rubocop) do |task|
  task.fail_on_error = true
end

task :test do
  puts 'No tests to run'
end
