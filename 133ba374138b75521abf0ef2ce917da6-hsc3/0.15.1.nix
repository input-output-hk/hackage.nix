{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsc3";
          version = "0.15.1";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) Rohan Drape and others, 2005-2014";
        maintainer = "rd@slavepianos.org";
        author = "Rohan Drape";
        homepage = "http://rd.slavepianos.org/t/hsc3";
        url = "";
        synopsis = "Haskell SuperCollider";
        description = "Haskell client for the SuperCollider synthesis server,\n<http://audiosynth.com/>.\n\nFor installation and configuration see the Tutorial at\n<http://rd.slavepianos.org/t/hsc3-texts>.";
        buildType = "Simple";
      };
      components = {
        "hsc3" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.data-ordlist
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hosc
            hsPkgs.network
            hsPkgs.process
            hsPkgs.random
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.transformers
          ];
        };
      };
    }