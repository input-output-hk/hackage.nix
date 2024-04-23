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
      identifier = { name = "twentefp-rosetree"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebastiaan.la.fleur@gmail.com          ";
      author = "Sebastiaan la Fleur";
      homepage = "";
      url = "";
      synopsis = "RoseTree type and show functions for lab assignment of University of Twente.        ";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."twentefp-number" or (errorHandler.buildDepError "twentefp-number"))
          (hsPkgs."twentefp-eventloop-graphics" or (errorHandler.buildDepError "twentefp-eventloop-graphics"))
        ];
        buildable = true;
      };
    };
  }