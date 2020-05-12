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
      identifier = { name = "gloss-devil"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas.DuBuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Display images in Gloss using libdevil for decoding";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."repa-devil" or (errorHandler.buildDepError "repa-devil"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }