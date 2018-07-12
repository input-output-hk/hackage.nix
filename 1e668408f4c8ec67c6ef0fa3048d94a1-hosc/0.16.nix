{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hosc";
          version = "0.16";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, Stefan Kersten and others, 2007-2017";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape, Stefan Kersten";
        homepage = "http://rd.slavepianos.org/t/hosc";
        url = "";
        synopsis = "Haskell Open Sound Control";
        description = "@hosc@ implements a subset of the Open Sound Control\nbyte protocol, <http://opensoundcontrol.org/>.\n\nSee \"Sound.OSC.Core\" or \"Sound.OSC\" or \"Sound.OSC.FD\".";
        buildType = "Simple";
      };
      components = {
        "hosc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.network
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }