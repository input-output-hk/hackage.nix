{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "linux-mount";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2014 Nicola Squartini";
      maintainer = "Nicola Squartini <tensor5@gmail.com>";
      author = "Nicola Squartini";
      homepage = "https://github.com/tensor5/linux-mount";
      url = "";
      synopsis = "Mount and unmount filesystems";
      description = "This module provides an interface to the system mount and umount\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "linux-mount" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }