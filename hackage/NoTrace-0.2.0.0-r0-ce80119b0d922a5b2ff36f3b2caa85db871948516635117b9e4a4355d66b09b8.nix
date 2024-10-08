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
      identifier = { name = "NoTrace"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "cindylinz@gmail.com";
      author = "Cindy Wang (CindyLinz)";
      homepage = "https://github.com/CindyLinz/Haskell-NoTrace";
      url = "";
      synopsis = "Remove all the functions come from Debug.Trace after debugging";
      description = "This module introduce functions with identical types with functions in the Debug.Trace.\nWhen completing the debug process,\nuse this module to overwrite and silently remove all the tracing functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "main" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }