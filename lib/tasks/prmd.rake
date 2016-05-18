require 'prmd/rake_tasks/combine'
require 'prmd/rake_tasks/verify'
require 'prmd/rake_tasks/doc'

namespace :prmd do
  namespace :v1 do
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
task prmd: ['prmd:v1:combine', 'prmd:v1:verify', 'prmd:v1:doc']
