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
      specVersion = "3.0";
      identifier = { name = "euler"; version = "0.10.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "luis@luisonthekeyboard.com";
      author = "Luis Rodrigues Soares";
      homepage = "https://github.com/luisonthekeyboard/euler";
      url = "";
      synopsis = "Mathematics utilities for Haskell";
      description = "Mathematics utilities and functions for Haskell, currently\naimed at solving problems in Project Euler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."euler" or (errorHandler.buildDepError "euler"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }