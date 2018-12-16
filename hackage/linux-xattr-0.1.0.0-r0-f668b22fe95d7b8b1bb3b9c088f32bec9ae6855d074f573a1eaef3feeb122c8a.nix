{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "linux-xattr";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright © 2013 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "";
      url = "";
      synopsis = "Read, set and list extended attributes";
      description = "XAttr provides bindings to the glibc functions for reading and\nmanipulating extended attributes (@setxattr@, @getxattr@,\n@listxattr@, ...).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }