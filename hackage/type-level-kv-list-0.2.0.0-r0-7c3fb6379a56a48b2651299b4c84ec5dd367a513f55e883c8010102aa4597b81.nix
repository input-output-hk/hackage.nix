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
      specVersion = "1.12";
      identifier = { name = "type-level-kv-list"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2016 Sakura-chan the Goat";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Sakura-chan the Goat";
      homepage = "https://github.com/arowM/type-level-kv-list#readme";
      url = "";
      synopsis = "Type level Key-Value list.";
      description = "This library provides a brief implementation for extensible records.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."type-level-kv-list" or (errorHandler.buildDepError "type-level-kv-list"))
          ];
          buildable = true;
        };
      };
    };
  }