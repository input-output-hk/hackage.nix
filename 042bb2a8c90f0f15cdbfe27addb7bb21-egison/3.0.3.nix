{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "egison";
          version = "3.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "egisatoshi@gmail.com";
        author = "Satoshi Egi, Ryo Tanaka, Takahisa Watanabe, Kentaro Honda";
        homepage = "http://egison.pira.jp";
        url = "";
        synopsis = "An Interpreter for the Programming Language Egison";
        description = "An interpreter for the programming language Egison.\nA feature of Egison is the strong pattern match facility.\nWith Egison, you can represent pattern matching for unfree data intuitively,\nespecially for collection data, such as lists, multisets, sets, and so on.\nThis package include sample Egison programs \"*-test.egi\" in \"sample/\" directory.\nThis package also include Emacs Lisp file \"egison-mode.el\" in \"elisp/\" directory.";
        buildType = "Simple";
      };
      components = {
        "egison" = {
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
          "egison" = {
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
          "test" = {
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
          "benchmark" = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
            ];
          };
          "benchmark-collection" = {
            depends  = [
              hsPkgs.egison
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
            ];
          };
        };
      };
    }