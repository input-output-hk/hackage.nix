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
      specVersion = "3.0";
      identifier = { name = "units-list"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Ashok Kimmel 2025-2026";
      maintainer = "ashok.kimmel@gmail.com";
      author = "Ashok Kimmel";
      homepage = "";
      url = "";
      synopsis = "Extensible typed Dimensions";
      description = "A package with statically typed dimensions that is more extensible than /Dimensional/ and simpler than /units/ Skip to the README for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "Dimension-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."units-list" or (errorHandler.buildDepError "units-list"))
          ];
          buildable = true;
        };
      };
    };
  }