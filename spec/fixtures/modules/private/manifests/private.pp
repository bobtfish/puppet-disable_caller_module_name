class private::private {
  # If we have stdlib >= 4.2.3, test this??
  # private()

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }
}

