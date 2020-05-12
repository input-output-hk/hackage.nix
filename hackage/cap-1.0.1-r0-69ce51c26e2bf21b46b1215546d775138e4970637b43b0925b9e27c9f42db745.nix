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
      identifier = { name = "cap"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Interprets and debug the cap language.";
      description = "An interpreter and debugger for the cap language.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }