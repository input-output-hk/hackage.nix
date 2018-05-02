{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "runmany";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "https://github.com/jwiegley/runmany#readme";
        url = "";
        synopsis = "Run multiple commands, interleaving output and errors";
        description = "Run multiple commands, interleaving output and errors";
        buildType = "Simple";
      };
      components = {
        exes = {
          runmany = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.stm
            ];
          };
        };
      };
    }