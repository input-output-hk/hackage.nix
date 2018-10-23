{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "linux-xattr";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2014 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "https://github.com/tensor5/linux-xattr";
      url = "";
      synopsis = "Read, set and list extended attributes";
      description = "Bindings to the Linux syscalls for reading and manipulating extended\nattributes (@setxattr@, @getxattr@, @listxattr@, ...).";
      buildType = "Simple";
    };
    components = {
      "linux-xattr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }