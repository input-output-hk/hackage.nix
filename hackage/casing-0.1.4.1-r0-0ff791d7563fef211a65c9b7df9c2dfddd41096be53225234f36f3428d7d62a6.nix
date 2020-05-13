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
      identifier = { name = "casing"; version = "0.1.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "Convert between various source code casing conventions";
      description = "Converts between camelCase, PascalCase, kebab-case, and three\nflavors of snake_case.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }