{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "euler";
          version = "0.3.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "luis@decomputed.com";
        author = "Luis Rodrigues Soares";
        homepage = "https://github.com/decomputed/euler";
        url = "";
        synopsis = "Mathematics utilities for Haskell";
        description = "Mathematics utilities and functions for Haskell, currently aimed at solving problems in Project Euler.";
        buildType = "Simple";
      };
      components = {
        euler = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.euler
              hsPkgs.hspec
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }