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
      identifier = { name = "iCalendar"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Tingtun";
      maintainer = "cra+code@cra.no";
      author = "Christian Rødli Amble";
      homepage = "http://github.com/tingtun/iCalendar";
      url = "";
      synopsis = "iCalendar data types, parser, and printer.";
      description = "Data definitions, parsing and printing of the iCalendar\nformat (RFC5545).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
        ];
        buildable = true;
      };
    };
  }