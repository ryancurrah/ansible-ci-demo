require 'serverspec'
require 'ansible_spec'

set :backend, :exec

#
# Set ansible variables to serverspec property
#

group_idx = ENV['TARGET_GROUP_INDEX'].to_i

vars = AnsibleSpec.get_variables('localhost', group_idx)
set_property vars
