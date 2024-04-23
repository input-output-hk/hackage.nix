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
      specVersion = "2.4";
      identifier = { name = "hcount"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) AfterTimes";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/hcount#readme";
      url = "";
      synopsis = "Haskell name counts.";
      description = "Counting of Haskell names and artifacts usage, based on stan.\n\n=== Usage\n\n1. Include the following ghc-options in the cabal file of the libraries you want to analyse:\n\n> -fwrite-ide-info\n> -hiedir=.hie\n\n2. Install hcount\n\n> stack install hcount\n\n3. run hcount\n\n> cd project\n> hcount";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hcount" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."stan" or (errorHandler.buildDepError "stan"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }