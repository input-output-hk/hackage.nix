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
      identifier = { name = "hackage-publish"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "";
      url = "";
      synopsis = "No frills releasing to Hackage";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage-publish" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."shh" or (errorHandler.buildDepError "shh"))
            (hsPkgs."shower" or (errorHandler.buildDepError "shower"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."which" or (errorHandler.buildDepError "which"))
            (hsPkgs."with-utf8" or (errorHandler.buildDepError "with-utf8"))
          ];
          buildable = true;
        };
      };
    };
  }