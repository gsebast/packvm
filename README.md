packvm
======

The project is based on the great chef/bento project.

I use it to build base box images for Vagrant for current OS versions of CentOS and Ubuntu.


Basic Usage
-----------

##### Validating a box build definition
```
   $ packer validate <box_name>.json
```

##### Building a box from a build definition
```
   $ packer build <box_name>.json
```
