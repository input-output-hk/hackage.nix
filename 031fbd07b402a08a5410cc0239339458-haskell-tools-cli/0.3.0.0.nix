{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-tools-cli";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nboldi@elte.hu";
        author = "Boldizsar Nemeth";
        homepage = "https://github.com/haskell-tools/haskell-tools";
        url = "";
        synopsis = "Command-line frontend for Haskell-tools Refact";
        description = "Command-line frontend for Haskell-tools Refact. Not meant as a final product, only for demonstration purposes.";
        buildType = "Simple";
      };
      components = {
        haskell-tools-cli = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.split
            hsPkgs.directory
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.references
            hsPkgs.haskell-tools-ast
            hsPkgs.haskell-tools-prettyprint
            hsPkgs.haskell-tools-refactor
          ];
        };
        exes = {
          ht-refact = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-tools-cli
            ];
          };
        };
        tests = {
          haskell-tools-cli-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-tools-cli
            ];
          };
        };
      };
    }