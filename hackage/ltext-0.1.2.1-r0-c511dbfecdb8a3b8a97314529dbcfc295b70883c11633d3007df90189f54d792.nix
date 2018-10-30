{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ltext";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parameterized file evaluator";
      description = "λtext is a general-purpose templating utility for text files.\n\nTurn plaintext files into lambdas -\nfunction application then becomes concatenation.\n\nPlease see the <https://github.com/ltext/ltext github page> for more details.\n\nAll credits go to Martin Grabmueller's\n<http://hackage.haskell.org/package/AlgorithmW AlgorithmW>\npackage for the type inference algorithm used in λtext.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.QuickCheck)
          (hsPkgs.quickcheck-combinators)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "ltext" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-combinators)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ltext)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-combinators)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }