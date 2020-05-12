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
      specVersion = "1.2";
      identifier = { name = "twilight-stm"; version = "1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Annette Bieniusa";
      maintainer = "Annette Bieniusa <bieniusa@informatik.uni-freiburg.de>";
      author = "";
      homepage = "http://proglang.informatik.uni-freiburg.de/projects/twilight/";
      url = "";
      synopsis = "STM library with safe irrevocable I/O and inconsistency repair";
      description = "A STM library with safe irrevocable I/O and inconsistency repair";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }