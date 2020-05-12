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
      identifier = { name = "aeson-casing"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrewrademacher@gmail.com";
      author = "Andrew Rademacher";
      homepage = "";
      url = "";
      synopsis = "Tools to change the formatting of field names in Aeson\ninstances.";
      description = "Tools to change the formatting of field names in Aeson\ninstances. This includes CamelCasing, Pascal Casing and\nSnake Casing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
        buildable = true;
        };
      tests = {
        "casing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-casing" or (errorHandler.buildDepError "aeson-casing"))
            ];
          buildable = true;
          };
        };
      };
    }