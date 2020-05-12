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
      identifier = { name = "confide"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alex Milkov";
      maintainer = "amilkov3@gmail.com";
      author = "Alex Milkov";
      homepage = "https://github.com/amilkov3/confide";
      url = "";
      synopsis = "derive typeclass instances for decoding types from HOCON conf";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deiko-config" or (errorHandler.buildDepError "deiko-config"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "confide-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."confide" or (errorHandler.buildDepError "confide"))
            (hsPkgs."deiko-config" or (errorHandler.buildDepError "deiko-config"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }