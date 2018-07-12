{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hscharm";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "andrew.pennebaker@gmail.com";
        author = "Andrew Pennebaker";
        homepage = "";
        url = "";
        synopsis = "Wau codec";
        description = "A base unary encoder/decoder";
        buildType = "Simple";
      };
      components = {
        "hscharm" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "hellocharm" = {
            depends  = [ hsPkgs.base ];
          };
          "rl" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.random-shuffle
            ];
          };
          "ddr" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.random-shuffle
            ];
          };
        };
      };
    }