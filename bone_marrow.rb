#!/usr/bin/env ruby

require 'erubis'

require_relative 'lib/skeleton'

$required_systems = %w(inbound application management database)
$project_name = 'skeleton_commerce'
$environment = %w(next development staging production)

Skeleton.create_playbook_directory
Skeleton.hosts
Skeleton.create_required_system_directories
Skeleton.common_playbook
Skeleton.required_system_playbook
Skeleton.infrastructure
Skeleton.dependencies
Skeleton.required_system_dependencies
Skeleton.vault
