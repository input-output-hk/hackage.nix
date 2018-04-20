{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-tools-cli";
          version = "0.8.0.0";
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
            hsPkgs.filepath
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.references
            hsPkgs.strict
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
          ht-test-stackage = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.split
            ];
          };
        };
        tests = {
          haskell-tools-cli-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskell-tools-cli
              hsPkgs.knob
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          cli-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-tools-cli
              hsPkgs.criterion
              hsPkgs.time
              hsPkgs.aeson
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.knob
              hsPkgs.bytestring
              hsPkgs.split
            ];
          };
        };
      };
    }