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
      identifier = { name = "timeparsers"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Nathan Ferris Hunter, 2011";
      maintainer = "Nathan Ferris Hunter <nathan.f.hunter@gmail.com>";
      author = "Nathan Ferris Hunter";
      homepage = "";
      url = "";
      synopsis = "Attoparsec parsers for various Date/Time formats.";
      description = "Parsers for various Date/Time formats, implemented in AttoParsec.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }