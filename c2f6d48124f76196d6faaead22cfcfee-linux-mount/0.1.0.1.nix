{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "linux-mount";
          version = "0.1.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "© 2013 Nicola Squartini";
        maintainer = "Nicola Squartini <tensor5@gmail.com>";
        author = "Nicola Squartini";
        homepage = "";
        url = "";
        synopsis = "Mount and unmount filesystems";
        description = "This module provides an interface to the system mount and umount\nfunctions.";
        buildType = "Simple";
      };
      components = {
        "linux-mount" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }