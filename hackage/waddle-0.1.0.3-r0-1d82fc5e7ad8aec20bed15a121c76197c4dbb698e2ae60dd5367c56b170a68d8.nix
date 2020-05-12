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
      identifier = { name = "waddle"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Martin Grabmueller";
      maintainer = "martin@grabmueller.de";
      author = "Martin Grabmueller";
      homepage = "";
      url = "";
      synopsis = "DOOM WAD file utilities.";
      description = "Library for reading WAD files as used by the DOOM engine into Haskell types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ];
        buildable = true;
        };
      exes = {
        "export-to-js" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."waddle" or (errorHandler.buildDepError "waddle"))
            ];
          buildable = true;
          };
        };
      };
    }