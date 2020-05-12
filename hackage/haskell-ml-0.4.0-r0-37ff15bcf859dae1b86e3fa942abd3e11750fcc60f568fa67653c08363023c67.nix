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
      identifier = { name = "haskell-ml"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 David Banas";
      maintainer = "capn.freako@gmail.com";
      author = "David Banas";
      homepage = "";
      url = "";
      synopsis = "Machine learning in Haskell";
      description = "Machine learning in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "iris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-ml" or (errorHandler.buildDepError "haskell-ml"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            ];
          buildable = true;
          };
        };
      tests = {
        "fcnTest1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-ml" or (errorHandler.buildDepError "haskell-ml"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            ];
          buildable = true;
          };
        };
      };
    }