require 'erubis'

module Skeleton
  def self.hosts
    input = File.read 'templates/hostfile.eruby'
    template_file = Erubis::Eruby.new input
    environments = $environment
    Dir.mkdir "playbook-#{$project_name}/hosts" unless Dir.exist? "playbook-#{$project_name}/hosts"
    environments.each do |environment|
      context = {
        required_systems: $required_systems,
        environment: environment
      }
      File.write "playbook-#{$project_name}/hosts/#{environment}", template_file.evaluate(context)
    end
  end
end
