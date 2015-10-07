require 'erubis'

module Skeleton
  def self.infrastructure
    input = File.read 'templates/infrastructure.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/infrastructure.yml", template_file.result
  end
end
