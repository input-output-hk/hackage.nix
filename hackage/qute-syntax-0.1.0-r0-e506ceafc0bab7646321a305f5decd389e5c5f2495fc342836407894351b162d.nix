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
      specVersion = "3.4";
      identifier = { name = "qute-syntax"; version = "0.1.0"; };
      license = "GPL-3.0-only AND BSD-2-Clause AND MIT";
      copyright = "";
      maintainer = "soeren+hackage@soeren-tempel.net";
      author = "Sören Tempel";
      homepage = "https://git.8pit.net/qute";
      url = "";
      synopsis = "This package provides a parser for the QBE intermediate language.";
      description = "This library provides a parser for the [QBE intermediate language](https://c9x.me/compile/)\nand algebraic data types to represent various QBE constructs. This package is the foundation\nof the [Qute](https://hackage.haskell.org/package/qute) software analysis framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "qute-syntax-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qute-syntax" or (errorHandler.buildDepError "qute-syntax"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
          ];
          buildable = true;
        };
      };
    };
  }