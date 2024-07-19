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
      specVersion = "2.2";
      identifier = { name = "wkt-types"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Gabriel Tollini";
      maintainer = "gabrieltollini@hotmail.com";
      author = "Gabriel Tollini";
      homepage = "https://github.com/gtollini/wkt-types#readme";
      url = "";
      synopsis = "A library for working with .wkt files.";
      description = "Please see the README on GitHub at <https://github.com/gtollini/wkt-types#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "wkt-types-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wkt-types" or (errorHandler.buildDepError "wkt-types"))
          ];
          buildable = true;
        };
      };
    };
  }