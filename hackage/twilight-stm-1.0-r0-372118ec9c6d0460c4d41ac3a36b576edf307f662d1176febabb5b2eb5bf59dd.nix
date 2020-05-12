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
      specVersion = "1.1";
      identifier = { name = "twilight-stm"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Annette Bieniusa";
      maintainer = "Annette Bieniusa";
      author = "";
      homepage = "http://proglang.informatik.uni-freiburg.de/projects/twilight/";
      url = "";
      synopsis = "Twilight STM library";
      description = "STM with safe irrevocable I/O and inconsistency repair";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."liboleg" or (errorHandler.buildDepError "liboleg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }