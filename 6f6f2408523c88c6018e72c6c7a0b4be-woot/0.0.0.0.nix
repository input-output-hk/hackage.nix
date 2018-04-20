{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "woot";
          version = "0.0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "tydotg@gmail.com";
        author = "Tyler Olson";
        homepage = "https://github.com/TGOlson/woot-haskell";
        url = "";
        synopsis = "Real time group editor without operational transform.";
        description = "Without operation transform - WOOT.";
        buildType = "Simple";
      };
      components = {
        woot = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.woot
            ];
          };
        };
      };
    }