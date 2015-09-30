require 'erubis'

module Skeleton
  def self.common_playbook
    input = File.read 'templates/playbook.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/playbook.yml", template_file.result
  end
  def self.required_system_playbook
    input = File.read 'templates/playbook.eruby'
    template_file = Erubis::Eruby.new input
    required_system = $required_systems
    required_system.each do |required_system|
      context = {
        required_system: required_system
      }
      File.write "playbook-#{$project_name}/#{required_system}/playbook.yml", template_file.result
    end
  end
end
