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
      identifier = { name = "hunit-parsec"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nejucomo@gmail.com";
      author = "Nathan Wilcox";
      homepage = "";
      url = "";
      synopsis = "An HUnit Testable instance for Parsec parser unit tests.";
      description = "An HUnit Testable instance for Parsec parser unit tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
        ];
        buildable = true;
      };
    };
  }