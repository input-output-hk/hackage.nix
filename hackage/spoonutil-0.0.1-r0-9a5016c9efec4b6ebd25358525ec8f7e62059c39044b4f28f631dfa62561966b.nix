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
      specVersion = "1.4";
      identifier = { name = "spoonutil"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Morrice";
      author = "John Morrice";
      homepage = "http://github.com/elginer/SpoonUtilities";
      url = "";
      synopsis = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      description = "Spoon's utilities.  Simple testing and nice looking error reporting.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
        ];
        buildable = true;
      };
      exes = { "test" = { buildable = true; }; };
    };
  }