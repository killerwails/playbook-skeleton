#!/usr/bin/env ruby

project_name = ARGV.shift
files = %w(dependencies playbook)
environments = %w(next development staging production)

system "mkdir -p playbook-#{project_name}/hosts"
system "touch playbook-#{project_name}/vault.yml"
system "touch playbook-#{project_name}/dependencies.yml"
system "touch playbook-#{project_name}/playbook.yml"
system "touch playbook-#{project_name}/infrastructure.yml"

environments.each { |environment| system "touch playbook-#{project_name}/hosts/#{environment}" }

required_systems = ['.', ARGV[1,-1]].flatten

ARGV.each do |required_system|
  system "mkdir -p playbook-#{project_name}/#{required_system}" unless required_system == '.'
  files.each do |file|
    system "touch playbook-#{project_name}/#{required_system}/#{file}.yml"
  end
end
