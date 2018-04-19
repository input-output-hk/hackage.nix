{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "turkish-deasciifier";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "joomy@cattheory.com";
        author = "Joomy Korkut";
        homepage = "http://github.com/joom/turkish-deasciifier.hs";
        url = "";
        synopsis = "Haskell port of Deniz Yuret's Turkish deasciifier.";
        description = "";
        buildType = "Simple";
      };
      components = {
        turkish-deasciifier = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
          ];
        };
        exes = {
          turkish-deasciifier = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.turkish-deasciifier
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.turkish-deasciifier
              hsPkgs.HUnit
            ];
          };
        };
      };
    }