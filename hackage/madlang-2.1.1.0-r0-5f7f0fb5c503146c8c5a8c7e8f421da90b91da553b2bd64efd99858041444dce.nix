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
    flags = { llvm-fast = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "2.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/madlang#readme";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tibetan-utils" or (errorHandler.buildDepError "tibetan-utils"))
          ];
        buildable = true;
        };
      exes = {
        "madlang" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."madlang" or (errorHandler.buildDepError "madlang"))
            ];
          buildable = true;
          };
        };
      tests = {
        "madlang-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."madlang" or (errorHandler.buildDepError "madlang"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "tweeths-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."madlang" or (errorHandler.buildDepError "madlang"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }