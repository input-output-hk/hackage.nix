{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "egison";
          version = "3.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Satoshi Egi <egi@egison.org>";
        author = "Satoshi Egi, Ryo Tanaka, Takahisa Watanabe, Kentaro Honda";
        homepage = "http://www.egison.org";
        url = "";
        synopsis = "The world's first language with non-linear pattern-matching against unfree data";
        description = "An interpreter for Egison, the world's first programming langugage which realized non-linear pattern-matching with unfree data types.\nWith Egison, you can represent pattern-matching with unfree data types intuitively,\nespecially for collection data, such as lists, multisets, sets.\nYou can find Egison programs in \"lib/\" and \"sample/\" directories.\nThis package also include Emacs Lisp file \"egison-mode.el\" in \"elisp/\" directory.";
        buildType = "Simple";
      };
      components = {
        egison = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.random
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.haskeline
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.ghc
            hsPkgs.ghc-paths
            hsPkgs.strict-io
            hsPkgs.bytestring
          ];
        };
        exes = {
          egison = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.haskeline
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.directory
              hsPkgs.ghc
              hsPkgs.ghc-paths
              hsPkgs.filepath
              hsPkgs.regex-posix
              hsPkgs.strict-io
              hsPkgs.bytestring
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.Glob
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }