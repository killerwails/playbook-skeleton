module Skeleton
  def self.create_playbook_directory
    Dir.mkdir "playbook-#{$project_name}" unless Dir.exists? "playbook-#{$project_name}"
  end
  def self.create_required_system_directories
    $required_systems.each do |required_system|
      Dir.mkdir "playbook-"+$project_name+"/"+required_system unless Dir.exists? "playbook-"+$project_name+"/"+required_system
    end
  end
end
