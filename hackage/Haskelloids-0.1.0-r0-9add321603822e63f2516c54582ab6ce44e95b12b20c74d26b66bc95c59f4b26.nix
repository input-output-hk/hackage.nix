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
      specVersion = "1.6";
      identifier = { name = "Haskelloids"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mrehayden@googlemail.com";
      author = "Matthew Hayden";
      homepage = "http://www.matthewhayden.co.uk";
      url = "";
      synopsis = "A reproduction of the Atari 1979 classic \"Asteroids\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "Haskelloids" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."HGL" or (errorHandler.buildDepError "HGL"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
          ];
          buildable = true;
        };
      };
    };
  }