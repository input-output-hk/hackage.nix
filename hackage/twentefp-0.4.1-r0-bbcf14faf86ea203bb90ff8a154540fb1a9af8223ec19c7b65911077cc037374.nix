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
      identifier = { name = "twentefp"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "";
      url = "";
      synopsis = "Lab Assignments Environment at Univeriteit Twente";
      description = "Lab Assignments Environment at Univeriteit Twente";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }