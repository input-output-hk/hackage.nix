{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3";
          version = "0.14";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2006-2013";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/?t=hsc3";
        url = "";
        synopsis = "Haskell SuperCollider";
        description = "Haskell client for the SuperCollider synthesis server,\n<http://audiosynth.com/>.\n\nFor installation and configuration see the Tutorial at\n<http://rd.slavepianos.org/?t=hsc3-texts>.\n\nhsc3 has two implementations of the non-determinstic\nUnit Generators, \"Sound.SC3.UGen.ID\" and\n\"Sound.SC3.UGen.Monad\".";
        buildType = "Simple";
      };
      components = {
        hsc3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hosc
            hsPkgs.murmur-hash
            hsPkgs.network
            hsPkgs.process
            hsPkgs.random
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
      };
    }