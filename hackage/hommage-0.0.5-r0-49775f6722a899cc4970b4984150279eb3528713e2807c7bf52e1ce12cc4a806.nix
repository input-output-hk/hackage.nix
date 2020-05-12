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
      identifier = { name = "hommage"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<None>";
      author = "Daniel van den Eijkel <dvde@gmx.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell Offline Music Manipulation And Generation EDSL";
      description = "HOMMAGE is the successor of the Haskell Sound Lib.\n<http://substitut-fuer-feinmotorik.net/projects/haskellommage/introduction>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }