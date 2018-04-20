{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sensenet";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rossdylan@csh.rit.edu";
        author = "Ross Delinger";
        homepage = "https://github.com/rossdylan/sensenet";
        url = "";
        synopsis = "Distributed sensor network for the raspberry pi";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          sensenet = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.stm
              hsPkgs.aeson
              hsPkgs.zeromq3-haskell
              hsPkgs.process
            ];
          };
        };
      };
    }