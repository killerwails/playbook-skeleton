require 'erubis'

module Skeleton
  def self.playbook
    input = File.read 'templates/playbook.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/playbook.yml", template_file.result
  end
end
