#!/usr/bin/env ruby

require 'erubis'

require_relative 'lib/skeleton'

$system_roles = %w(application database management)
$ansible_roles = %w(nginx php mongodb autodeploy)
$required_systems = %w(inbound application management database)
$project_name = 'test'
$environment = %w(next development staging production)

Skeleton.create_playbook_directory
Skeleton.playbook
Skeleton.infrastructure
Skeleton.dependencies
Skeleton.hosts
