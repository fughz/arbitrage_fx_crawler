require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'

namespace :prmd do
  namespace :v1 do
    
    task :mkdir => :environment do
      Dir.mkdir('schema') unless File.directory?('schema')
      schema_api = File.join('schema', 'api')
      Dir.mkdir(schema_api) unless File.directory?(schema_api)
      schema_api_v1 = File.join(schema_api, 'v1')
      Dir.mkdir(schema_api_v1) unless File.directory?(schema_api_v1)
    end

    Prmd::RakeTasks::Combine.new do |t|
      t.options[:meta] = 'schemata/api/meta.json'
      t.paths << 'schemata/api/v1/'
      t.output_file = 'schema/api/v1/schema.json'
    end

    Prmd::RakeTasks::Verify.new do |t|
      t.files << 'schema/api/v1/schema.json'
    end

    Prmd::RakeTasks::Doc.new do |t|
      t.files = { 'schema/api/v1/schema.json' => 'schema/api/v1/schema.md' }
    end
  end
end
desc 'Combine, verify, and generate documantation'
task prmd: ['prmd:v1:mkdir', 'prmd:v1:combine', 'prmd:v1:verify', 'prmd:v1:doc']
