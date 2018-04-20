{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "throttled-io-loop";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Axial Exchange";
        maintainer = "rfischer+stack@axialexchange.com";
        author = "Robert Fischer";
        homepage = "https://github.com/AxialExchange/haskell-throttled-io-loop#readme";
        url = "";
        synopsis = "Loop over an action but throttle it to a certain rate";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        throttled-io-loop = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.natural-numbers
          ];
        };
        tests = {
          loop-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.throttled-io-loop
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }