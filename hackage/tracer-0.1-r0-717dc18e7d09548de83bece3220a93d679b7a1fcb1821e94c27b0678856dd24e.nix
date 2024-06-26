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
      identifier = { name = "tracer"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kena@vodka-pomme.net";
      author = "Raphael 'kena' Poss";
      homepage = "https://github.com/knz/hs-tracer";
      url = "";
      synopsis = "Tracing utilities for Functor/Applicative/Monad types";
      description = "Transformers for 'Functor', 'Applicative' and 'Monad' types that add\ntracing facilities for computation steps and applicative nesting.\nSimplifies print-based debugging.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "doc-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }