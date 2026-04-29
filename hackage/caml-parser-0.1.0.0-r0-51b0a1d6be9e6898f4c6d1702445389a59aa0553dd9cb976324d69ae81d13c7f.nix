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
      specVersion = "3.0";
      identifier = { name = "caml-parser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2025 overshiki";
      maintainer = "le.niu@hotmail.com";
      author = "overshiki";
      homepage = "https://github.com/overshiki/caml-parser";
      url = "";
      synopsis = "An extensible parser-combinator library for Caml-Light";
      description = "A Megaparsec-based parser combinator library for the Caml-Light language,\nfeaturing a plugin architecture for embedding domain-specific languages.\n.\nThe core parser covers the full Caml-Light grammar — expressions, patterns,\ntypes, declarations, and toplevel phrases — while the plugin system allows\nEDSL authors to register new keywords, inject grammar productions, and\nextend the AST without modifying the core source code.\n.\nAn included example plugin implements the MLQE quantum programming\nextension, validating @qdef@ declarations for quantum gates and channels.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "caml-parser-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caml-parser" or (errorHandler.buildDepError "caml-parser"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }