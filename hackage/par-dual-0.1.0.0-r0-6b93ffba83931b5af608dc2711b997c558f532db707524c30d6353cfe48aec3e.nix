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
      identifier = { name = "par-dual"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2020 - Gabriel Volpe";
      maintainer = "volpegabriel@gmail.com";
      author = "Gabriel Volpe";
      homepage = "https://github.com/gvolpe/par-dual";
      url = "";
      synopsis = "ParDual class for Parallel <-> Sequential";
      description = "Defines a ParDual class for a Parallel <-> Sequential relationship";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."validators" or (errorHandler.buildDepError "validators"))
          ];
        buildable = true;
        };
      tests = {
        "par-dual-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."par-dual" or (errorHandler.buildDepError "par-dual"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."validators" or (errorHandler.buildDepError "validators"))
            ];
          buildable = true;
          };
        };
      };
    }