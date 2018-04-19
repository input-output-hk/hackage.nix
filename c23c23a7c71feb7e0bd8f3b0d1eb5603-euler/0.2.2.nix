{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "euler";
          version = "0.2.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "luis@decomputed.com";
        author = "Luis Rodrigues Soares";
        homepage = "https://github.com/decomputed/euler";
        url = "";
        synopsis = "Mathematics utilities for Haskell";
        description = "Mathematics utilities and functions for Haskell, currently\naimed at solving problems inn Project Euler.";
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
        };
      };
    }