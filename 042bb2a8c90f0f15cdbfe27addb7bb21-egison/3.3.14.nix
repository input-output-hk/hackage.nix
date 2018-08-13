{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "egison";
        version = "3.3.14";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Satoshi Egi <egi@egison.org>";
      author = "Satoshi Egi, Ryo Tanaka, Takahisa Watanabe, Kentaro Honda";
      homepage = "http://www.egison.org";
      url = "";
      synopsis = "Programming language with non-linear pattern-matching against unfree data";
      description = "An interpreter for Egison, the programming langugage that realized non-linear pattern-matching against unfree data types.\nWith Egison, we can directly represent pattern-matching against a wide range of data types such as lists, multisets, sets, trees and graphs.\nWe can find Egison programs in @lib@ and @sample@ directories.\nThis package also include Emacs Lisp file @elisp/egison-mode.el@.\n\nThe following code is the program that determines poker-hands written in Egison.\nAll hands are expressed in a single pattern.\nIsn't it exciting?\nWe can run this code online at <http://www.egison.org/demonstrations/poker-hands.html>.\n\n<<http://www.egison.org/images/poker-hands.png>>\n\nThe pattern-matching of Egison is very powerful.\nPlease view and try more demonstrations.\n\n<http://www.egison.org/demonstrations/>\n\nEgison makes programming dramatically simple.\nPlease help us to make Egison popular.";
      buildType = "Simple";
    };
    components = {
      "egison" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.haskeline)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.strict-io)
          (hsPkgs.text)
          (hsPkgs.regex-posix)
          (hsPkgs.direct-sqlite)
        ];
      };
      exes = {
        "egison" = {
          depends  = [
            (hsPkgs.egison)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.filepath)
            (hsPkgs.strict-io)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.egison)
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.Glob)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.egison)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }