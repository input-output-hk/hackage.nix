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
    flags = { development = false; llvm-fast = false; library = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "madlang"; version = "2.4.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/madlang";
      url = "";
      synopsis = "Randomized templating language DSL";
      description = "Madlang is a text templating language written in Haskell,\nmeant to explore computational creativity and generative\nliterature.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."composition" or (errorHandler.buildDepError "composition"))
          (hsPkgs."composition-extra" or (errorHandler.buildDepError "composition-extra"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "madlang" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."madlang" or (errorHandler.buildDepError "madlang"))
            ];
          buildable = if flags.library then false else true;
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
        "madlang-bench" = {
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