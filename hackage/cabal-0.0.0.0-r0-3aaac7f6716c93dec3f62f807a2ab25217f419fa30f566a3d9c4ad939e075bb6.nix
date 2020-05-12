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
      identifier = { name = "cabal"; version = "0.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter.schonwald@gmail.com";
      author = "Carter Tazio Schonwald";
      homepage = "";
      url = "";
      synopsis = "placeholder for Cabal package, you want the upper case Cabal";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."youProbablyWantCapitalCabal" or (errorHandler.buildDepError "youProbablyWantCapitalCabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }