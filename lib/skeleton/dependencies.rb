require 'erubis'

module Skeleton
  def self.dependencies
    input = File.read 'templates/dependencies.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/dependencies.yml", template_file.result
  end
end
