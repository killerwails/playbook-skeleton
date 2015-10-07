require 'erubis'

module Skeleton
  def self.dependencies
    input = File.read 'templates/dependencies.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/dependencies.yml", template_file.result
  end
  def self.required_system_dependencies
    input = File.read 'templates/dependencies.eruby'
    template_file = Erubis::Eruby.new input
    required_system = $required_systems
    required_system.each do |required_system|
      context = {
        required_system: required_system
      }
      File.write "playbook-#{$project_name}/#{required_system}/dependencies.yml", template_file.result
    end
  end
end
