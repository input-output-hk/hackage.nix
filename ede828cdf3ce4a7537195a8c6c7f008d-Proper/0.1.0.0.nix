{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Proper";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "";
        url = "";
        synopsis = "An implementation of propositional logic in Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        Proper = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          Proper = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
          Proper-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
        };
      };
    }