# Skeleton

A script that builds out the directory structure and commonalities of our ansible playbooks.

## Dependencies

`bundle install`

## Usage

`ruby skeleton.rb {project_name} {required_system} {required_system} ...`

## Iterations

#### First Iteration
- ruby playbook_skeleton {project_name} {required_system} {required_system}
- Creates the main directory title 'playbook-{project_name}'
  - Populates main directory with 'playbook.yml', 'dependencies.yml' and 'vault.yml'
- Creates a sub directory titled 'hosts'
  - Populates directory with four files 'next, development, staging, production'
- Creates the sub directories titled {required_system}
  - Populates each {required system} directory with 'playbook.yml' and 'dependencies.yml'

All files are created blank, but will be updated (in the next iteration) to suite current ansible requirements for baser functionality.

#### Second Iteration
- Commandline functionality detailed above still persists and can be invoked by targetting 'skeleton.rb' with the appropriate options.
- Newly added, is 'bone_marrow.rb' (working title), which allows you to populate the inards of the playbook file structure.
  - At present these inards are static and must be modified in marrow.rb to work.
- Next version bump will include the 'required_system' (ex application, management) functionality. At present only the common level exists. As well as correctly generate the host files for next/dev/stage/prod.
Eventually bone_marrow will run with a command line interface similar to the first iteration and later with a checklist UI populated with TD ansible roles.

#### Third Iteration
- Commandline functionality has been merged with directory creation. Renamed bone_marrow to skeleton for consistency.
- Current incarnation will with commandline create all necessary directorys and files and populate them with all common information.
- Role population will be implemented pending 'ansible-selfserve' being successfully ported and tested.
  - At present must be written manually.

## License
[MIT](https://tldrlegal.com/license/mit-license)

## Contributors
* [Aaron Pederson](https://aaronpederson.github.io) | [e-mail](mailto:aaronpederson@gmail.com) | [Twitter](https://twitter.com/GunFuSamurai)
