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
      identifier = { name = "io-embed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Gabriel Tollini";
      maintainer = "gabrieltollini@hotmail.com";
      author = "Gabriel Tollini";
      homepage = "https://github.com/gtollini/io-embed#readme";
      url = "";
      synopsis = "Use Template Haskell to embed the result of an IO computation.";
      description = "Please see the README on GitHub at <https://github.com/gtollini/io-embed#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "io-embed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."io-embed" or (errorHandler.buildDepError "io-embed"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }