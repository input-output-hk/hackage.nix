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
      specVersion = "1.8";
      identifier = { name = "twentefp-number"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebastiaan.la.fleur@gmail.com          ";
      author = "Christiaan Baaij & Sebastiaan la Fleur";
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
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }