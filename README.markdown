####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Limitations - OS compatibility, etc.](#limitations)
4. [Development - Guide for contributing to the module](#development)

##Overview

Private classes are hateful for users. This module disables them.

##Module Description

This module does horrible horrible things to the puppet internals, and disables the 'caller_module_name'
variable, by setting it to the same as the 'module_name' variable.

This stops the 'private class hack' (as shown here: http://www.unixdaemon.net/tools/puppet/protect-internal-puppet-classes.html)
and the private() function from puppetlabs/stdlib (which just implements this hack).

NOTE: If you have a legitemate use of the 'caller_module_name' variable, this code will break it!

##Setup

Just include this module in your modulepath

##Limitations

Only currently tested against puppet 3.5.1.

##Development

Patches are welcome! I'd love to support more puppet versions, and to add functionality to be able
to disable private classes on a per-module basis.



