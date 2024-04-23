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
      identifier = { name = "random-shuffle"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Oleg Kiselyov 2001\nManlio Perillo 2009";
      maintainer = "Manlio Perillo <manlio.perillo@gmail.com>";
      author = "Oleg Kiselyov, Manlio Perillo, Andras Slemmer";
      homepage = "";
      url = "";
      synopsis = "Random shuffle implementation.";
      description = "Random shuffle implementation, on immutable lists.\nBased on `perfect shuffle' implementation by Oleg Kiselyov,\navailable on http://okmij.org/ftp/Haskell/perfect-shuffle.txt";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
        ];
        buildable = true;
      };
    };
  }