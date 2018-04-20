{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "mount";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "tensor5@gmail.com";
        author = "Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "Mounts and umounts filesystems";
        description = "This module provides an interface to the system mount and umount functions.";
        buildType = "Simple";
      };
      components = {
        mount = {
          depends  = [ hsPkgs.base ];
        };
      };
    }