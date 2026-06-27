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
      identifier = { name = "keymapp"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2026";
      maintainer = "frederick.pringle@fpringle.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/haskell-keymapp";
      url = "";
      synopsis = "gRPC client for the Keymapp API";
      description = "This library provides a client for interacting with the [Keymapp](https://blog.zsa.io/keymapp) API.\nIt can be used as a Haskell library, or via the provided CLI executable, which is inspired by [Kontroll](https://github.com/zsa/kontroll).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."grapesy" or (errorHandler.buildDepError "grapesy"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      exes = {
        "keymapp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grapesy" or (errorHandler.buildDepError "grapesy"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."keymapp" or (errorHandler.buildDepError "keymapp"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ];
          buildable = true;
        };
      };
    };
  }