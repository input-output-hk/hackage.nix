{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      lib-werror = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rng-utils";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozgun.ataman@soostone.com";
        author = "Ozgun Ataman, Snap Framework Authors";
        homepage = "https://bitbucket.org/soostone/rng-utils";
        url = "";
        synopsis = "RNG within an IORef for convenient concurrent use";
        description = "rng-utils aims to make it easy to generate an RNG and safely use it concurrently.";
        buildType = "Simple";
      };
      components = {
        rng-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.random
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.hedgehog
              hsPkgs.tasty-hedgehog
              hsPkgs.rng-utils
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.rng-utils
            ];
          };
        };
      };
    }