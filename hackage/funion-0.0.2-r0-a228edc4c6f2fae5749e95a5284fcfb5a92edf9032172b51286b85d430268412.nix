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
      specVersion = "0";
      identifier = { name = "funion"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nathanwiegand@gmail.com";
      author = "Nathan Wiegand";
      homepage = "http://github.com/nathanwiegand/funion";
      url = "";
      synopsis = "A unioning file-system using HFuse ";
      description = "A unioning file-system using HFuse";
      buildType = "Simple";
      };
    components = {
      exes = {
        "funion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HFuse" or (errorHandler.buildDepError "HFuse"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }