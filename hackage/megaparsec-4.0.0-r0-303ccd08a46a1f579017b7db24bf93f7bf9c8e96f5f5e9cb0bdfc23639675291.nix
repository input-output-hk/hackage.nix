{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "megaparsec"; version = "4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Megaparsec contributors,\nPaolo Martini <paolo@nemail.it>,\nDaan Leijen <daan@microsoft.com>";
      homepage = "https://github.com/mrkkrp/megaparsec";
      url = "";
      synopsis = "Monadic parser combinators";
      description = "This is industrial-strength monadic parser combinator library. Megaparsec is\na fork of Parsec library originally written by Daan Leijen.\n\nMegaparsec is different from Parsec in the following ways:\n\n* Better error messages. We test our error messages using dense QuickCheck\ntests. Good error messages are just as important for us as correct return\nvalues of our parsers. Megaparsec will be especially useful if you write\ncompiler or interpreter for some language.\n\n* Some quirks and “buggy features” (as well as plain bugs) of original\nParsec are fixed. There is no undocumented surprising stuff in Megaparsec.\n\n* Better support for Unicode parsing in \"Text.Megaparsec.Char\".\n\n* Megaparsec has more powerful combinators and can parse languages where\nindentation matters.\n\n* Comprehensive QuickCheck test suite covering nearly 100% of our code.\n\n* We have benchmarks to detect performance regressions.\n\n* Better documentation, with 100% of functions covered, without typos and\nobsolete information, with working examples. Megaparsec's documentation is\nwell-structured and doesn't contain things useless to end user.\n\n* Megaparsec's code is clearer and doesn't contain “magic” found in original\nParsec.\n\n* Megaparsec looks into the future, it does not contain code that serves for\ncompatibility purposes, it also requires more recent version of `base`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "old-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }