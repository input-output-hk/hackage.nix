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
      identifier = { name = "flexible-unlit"; version = "0.2013.314.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rhymoid@gmail.com";
      author = "Stijn van Drongelen";
      homepage = "";
      url = "";
      synopsis = "A configurable reimplementation of unlit";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "funlit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."flexible-unlit" or (errorHandler.buildDepError "flexible-unlit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }