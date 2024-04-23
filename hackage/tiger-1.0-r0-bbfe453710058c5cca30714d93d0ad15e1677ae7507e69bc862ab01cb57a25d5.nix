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
      identifier = { name = "tiger"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Doaitse Swierstra";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Tiger Compiler of Universiteit Utrecht";
      description = "Tiger compiler";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tiger" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          ];
          buildable = true;
        };
      };
    };
  }