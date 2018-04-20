{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hzenhan";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 karky7 Calimakvonia";
        maintainer = "cantimerny.g@gmail.com";
        author = "karky7";
        homepage = "https://github.com/karky7/hzenhan#readme";
        url = "";
        synopsis = "Zenhan library for Haskell";
        description = "Converter between Full-width Japanese and Half-width Japanese";
        buildType = "Simple";
      };
      components = {
        hzenhan = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.hzenhan
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.text
              hsPkgs.containers
            ];
          };
        };
      };
    }