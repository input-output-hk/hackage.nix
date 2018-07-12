{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Folly";
          version = "0.1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dillon Huff";
        author = "Dillon Huff";
        homepage = "https://github.com/dillonhuff/Folly";
        url = "";
        synopsis = "A first order logic library in Haskell";
        description = "An implementation of first order logic in Haskell that\nincludes a library of modules for incorporating first\norder logic into other programs as well as an executable\ntheorem prover that uses resolution to prove theorems\nin first order logic.";
        buildType = "Simple";
      };
      components = {
        "Folly" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
          ];
        };
        exes = {
          "Folly" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.parsec
            ];
          };
          "Folly-tests" = {
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