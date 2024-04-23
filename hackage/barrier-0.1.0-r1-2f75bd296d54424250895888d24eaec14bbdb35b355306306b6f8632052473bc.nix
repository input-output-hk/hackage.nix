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
    flags = { example = false; generator = false; test-results = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "barrier"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/barrier";
      url = "";
      synopsis = "Shield.io style badge generator";
      description = "see example: <https://github.com/philopon/barrier/blob/master/examples/example.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "barrier-data-generator" = {
          depends = pkgs.lib.optionals (flags.generator) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."freetype2" or (errorHandler.buildDepError "freetype2"))
          ];
          buildable = if flags.generator then true else false;
        };
        "barrier-example" = {
          depends = pkgs.lib.optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."barrier" or (errorHandler.buildDepError "barrier"))
          ];
          buildable = if flags.example then true else false;
        };
        "barrier-test-result-generator" = {
          depends = pkgs.lib.optionals (flags.test-results) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."barrier" or (errorHandler.buildDepError "barrier"))
          ];
          buildable = if flags.test-results then true else false;
        };
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."barrier" or (errorHandler.buildDepError "barrier"))
          ];
          buildable = true;
        };
      };
    };
  }