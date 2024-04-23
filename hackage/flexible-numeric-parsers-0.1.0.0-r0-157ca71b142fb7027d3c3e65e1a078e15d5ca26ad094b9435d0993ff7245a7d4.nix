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
      specVersion = "2.4";
      identifier = { name = "flexible-numeric-parsers"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Patrick Thomson";
      maintainer = "Patrick Thomson <patrickt@github.com>";
      author = "Patrick Thomson";
      homepage = "https://github.com/patrickt/flexible-numeric-parsers";
      url = "";
      synopsis = "Flexible numeric parsers for real-world programming languages.";
      description = "This package provides parsers for integer, natural, and arbitrary-precision decimal\nnumbers that are compatible with the syntaxes of a wide variety of programming languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
      tests = {
        "flexible-numeric-parsers-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."flexible-numeric-parsers" or (errorHandler.buildDepError "flexible-numeric-parsers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }