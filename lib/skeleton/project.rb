module Skeleton
  def self.create_playbook_directory
    Dir.mkdir "playbook-#{$project_name}" unless Dir.exists? "playbook-#{$project_name}"
  end
end
