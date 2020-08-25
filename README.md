# packvm

The project is based on the great [Chef/Bento](https://github.com/chef/bento) and 
[Boxcutter](https://github.com/boxcutter) projects. In comparison to those this 
project is reduced in scope and adapted to personal preferences.

## Basic Usage
##### Validating a box build definition
```bash
packer validate <box_name>.json
```

##### Building a box from a build definition
```bash
packer build <box_name>.json
```

## Builds
### **Server Boxes**
##### CentOS 7.8
```bash
# Launch from ./packer_templates/centos/server folder

# validate
packer validate -var-file='../_common/vars/centos-7.8-x86_64.json' -only='vb_plain' centos.json

# build
packer build -var-file='../_common/vars/centos-7.8-x86_64.json' -only='vb_plain' centos.json
```

##### CentOS 8.1
```bash
# Launch from ./packer_templates/centos/server folder

# validate
packer validate -var-file='../_common/vars/centos-8.1-x86_64.json' -only='vb_plain' centos.json

# build
packer build -var-file='../_common/vars/centos-8.1-x86_64.json' -only='vb_plain' centos.json
```

##### Ubuntu 16.04
```bash
# Launch from ./packer_templates/ubuntu/server folder

# validate
packer validate -var-file='../_common/vars/ubuntu-16.04-amd64.json' -only='vb_plain' ubuntu.json

# build
packer build -var-file='../_common/vars/ubuntu-16.04-amd64.json' -only='vb_plain' ubuntu.json
```

##### Ubuntu 18.04
```bash
# Launch from ./packer_templates/ubuntu/server folder

# validate
packer validate -var-file='../_common/vars/ubuntu-18.04-amd64.json' -only='vb_plain' ubuntu.json

# build
packer build -var-file='../_common/vars/ubuntu-18.04-amd64.json' -only='vb_plain' ubuntu.json
```

##### Ubuntu 20.04
```bash
# Launch from ./packer_templates/ubuntu/server folder

# validate
packer validate -var-file='../_common/vars/ubuntu-20.04-amd64.json' -only='vb_plain' ubuntu.json

# build
packer build -var-file='../_common/vars/ubuntu-20.04-amd64.json' -only='vb_plain' ubuntu.json
```

### **Desktop Boxes**
##### CentOS 8.1
```bash
# Launch from ./packer_templates/centos/server folder

# validate
packer validate -var-file='../_common/vars/centos-8.1-x86_64.json' -var 'ks_path=8/ks_desktop.cfg' -only='vb_plain' centos.json

# build
packer build -var-file='../_common/vars/centos-8.1-x86_64.json' -var 'ks_path=8/ks_desktop.cfg' -only='vb_plain' centos.json
```

##### Ubuntu 18.04
```bash
# Launch from ./packer_templates/ubuntu/desktop folder

# validate
packer validate -var-file='../_common/vars/ubuntu-18.04-amd64.json' -only='vb_plain' ubuntu.json

# build
packer build -var-file='../_common/vars/ubuntu-18.04-amd64.json' -only='vb_plain' ubuntu.json
```

##### Ubuntu 20.04
```bash
# Launch from ./packer_templates/ubuntu/desktop folder

# validate
packer validate -var-file='../_common/vars/ubuntu-20.04-amd64.json' -only='vb_plain' ubuntu.json

# build
packer build -var-file='../_common/vars/ubuntu-20.04-amd64.json' -only='vb_plain' ubuntu.json
```

##### Windows 10
```bash
# Launch from ./packer_templates/windows/desktop folder

# validate
packer validate -only='vb_plain' windows-10.json

# build
packer validate -only='vb_plain' windows-10.json
```

##### Windows 2016 64-bit
```bash
# Launch from ./packer_templates/windows/server folder

# validate
packer validate -only='vb_plain' windows-2016_64.json

# build
packer validate -only='vb_plain' windows-2016_64.json
```

##### Windows 2019 64-bit
```bash
# Launch from ./packer_templates/windows/server folder

# validate
packer validate -only='vb_plain' windows-2019_64.json

# build
packer validate -only='vb_plain' windows-2019_64.json
```

## TODO - Box Builds
* Amazon Linux 2 (highest prio)
* Debian 9,10
* FreeBSD 11,12

## Maintainers
Sebastian Gerau ([sg.infotech@protonmail.com](mailto:sg.infotech@protonmail.com))

## License
**Copyright:** 2020, Sebastian Gerau

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
