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
      identifier = { name = "language-glsl"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "noteed@gmail.com";
      author = "Vo Minh Thu";
      homepage = "";
      url = "";
      synopsis = "GLSL abstract syntax tree, parser, and pretty-printer";
      description = "The package language-glsl is a Haskell library for the\nrepresentation, the parsing, and the pretty-printing of\nGLSL 1.50 code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
        ];
        buildable = true;
      };
      exes = {
        "glsl-pprint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."language-glsl" or (errorHandler.buildDepError "language-glsl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          ];
          buildable = true;
        };
      };
    };
  }