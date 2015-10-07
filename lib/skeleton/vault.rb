require 'erubis'

module Skeleton
  def self.vault
    input = File.read 'templates/vault.eruby'
    template_file = Erubis::Eruby.new input
    File.write "playbook-#{$project_name}/vault.yml", template_file.result
  end
end
