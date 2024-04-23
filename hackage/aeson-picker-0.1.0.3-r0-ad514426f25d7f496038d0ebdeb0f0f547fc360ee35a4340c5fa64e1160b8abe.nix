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
      identifier = { name = "aeson-picker"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Bogdan Neterebskii";
      maintainer = "bog2dan1@gmail.com";
      author = "Bogdan Neterebskii";
      homepage = "https://github.com/ozzzzz/aeson-picker#readme";
      url = "";
      synopsis = "Tiny library to get fields from JSON format";
      description = "Tiny library to get fields from JSON format";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "aeson-picker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson-picker" or (errorHandler.buildDepError "aeson-picker"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }