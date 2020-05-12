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
      specVersion = "1.18";
      identifier = { name = "beam-th"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Tobias Markus <tobias AT miglix DOT eu>";
      maintainer = "Tobias Markus <tobias AT miglix DOT eu>";
      author = "Tobias Markus <tobias AT miglix DOT eu>";
      homepage = "https://github.com/hesiod/beam-th";
      url = "";
      synopsis = "Template Haskell utilities for beam";
      description = "(Completely optional) Template Haskell functions\nto derive common boilerplate code when writing table types\nfor the <https://hackage.haskell.org/package/beam beam> library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."beam" or (errorHandler.buildDepError "beam"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          ];
        buildable = true;
        };
      tests = {
        "test-beam-th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."beam-th" or (errorHandler.buildDepError "beam-th"))
            (hsPkgs."beam" or (errorHandler.buildDepError "beam"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "doctest-beam-th" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (errorHandler.buildDepError "doctest-discover"))
            ];
          buildable = true;
          };
        };
      };
    }