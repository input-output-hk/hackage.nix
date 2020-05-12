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
      specVersion = "1.8";
      identifier = { name = "hs-carbon-examples"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "cholmgreen@gmail.com";
      author = "Casper M. H. Holmgreen";
      homepage = "";
      url = "";
      synopsis = "Example Monte Carlo simulations implemented with Carbon";
      description = "Example Monte Carlo simulations implemented with Carbon";
      buildType = "Simple";
      };
    components = {
      exes = {
        "PiExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-carbon" or (errorHandler.buildDepError "hs-carbon"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            ];
          buildable = true;
          };
        "IntegralExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-carbon" or (errorHandler.buildDepError "hs-carbon"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            ];
          buildable = true;
          };
        "TransportExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-carbon" or (errorHandler.buildDepError "hs-carbon"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }