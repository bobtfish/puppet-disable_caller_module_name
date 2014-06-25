module PuppetXPatchScopeNoPrivateClasses
  def []=(var, val)
    if var == 'caller_module_name'
      val = self['module_name']
    end
    super(var, val)
  end
end

class Puppet::Resource::Type
  old_set_resource_parameters = instance_method(:set_resource_parameters)
  define_method(:set_resource_parameters) do |resource, scope|
    scope.extend(PuppetXPatchScopeNoPrivateClasses) unless scope.is_a?(PuppetXPatchScopeNoPrivateClasses)
    old_set_resource_parameters.bind(self).(resource, scope)
  end
end

