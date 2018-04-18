{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hosc";
          version = "0.10.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape, Stefan Kersten and others, 2006-2011";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape, Stefan Kersten";
        homepage = "http://slavepianos.org/rd/?t=hosc";
        url = "";
        synopsis = "Haskell Open Sound Control";
        description = "hosc provides Sound.OpenSoundControl, a haskell\nmodule implementing a subset of the Open Sound\nControl byte protocol.";
        buildType = "Simple";
      };
      components = {
        hosc = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.network
            hsPkgs.time
          ];
        };
      };
    }