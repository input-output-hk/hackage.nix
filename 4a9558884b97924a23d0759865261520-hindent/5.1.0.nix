{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hindent";
          version = "5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Chris Done, 2015 Andrew Gibiansky";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done, Andrew Gibiansky, Tobias Pflug, Pierre Radermecker";
        homepage = "http://www.github.com/chrisdone/hindent";
        url = "";
        synopsis = "Extensible Haskell pretty printer";
        description = "Extensible Haskell pretty printer. Both a library and an executable.\n\nSee the Github page for usage\\/explanation: <https://github.com/chrisdone/hindent>";
        buildType = "Simple";
      };
      components = {
        "hindent" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.haskell-src-exts
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.text
          ];
        };
        exes = {
          "hindent" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.descriptive
              hsPkgs.haskell-src-exts
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.text
            ];
          };
        };
        tests = {
          "hindent-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.haskell-src-exts
              hsPkgs.monad-loops
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.hspec
              hsPkgs.directory
              hsPkgs.deepseq
              hsPkgs.exceptions
              hsPkgs.utf8-string
              hsPkgs.Diff
            ];
          };
        };
        benchmarks = {
          "hindent-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hindent
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.haskell-src-exts
              hsPkgs.ghc-prim
              hsPkgs.directory
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.exceptions
            ];
          };
        };
      };
    }