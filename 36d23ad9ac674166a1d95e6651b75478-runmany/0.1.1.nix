{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "runmany";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2017 John Wiegley. All Rights Reserved.";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/runmany";
        url = "";
        synopsis = "Run multiple commands, interleaving output and errors";
        description = "Run multiple commands, interleaving output and errors";
        buildType = "Simple";
      };
      components = {
        exes = {
          "runmany" = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.stm
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.process
            ];
          };
        };
      };
    }