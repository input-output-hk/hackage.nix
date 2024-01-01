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
      identifier = { name = "bbcode"; version = "0.2.0.1"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "serendipitousdog@protonmail.com";
      author = "Repetitive";
      homepage = "https://gitlab.com/repetitivesin/BBCode";
      url = "";
      synopsis = "Library for parsing, constructing, and printing BBCode";
      description = "This is a set of utilities for: Parsing BBCode into AST(providing\nrelated types), Building BBCode AST with simple DSL based on\nSemigroup and functions.\nCurrently this library can only be used with a very specific BBCode dialect\nused on a resource I won't name.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      tests = {
        "BBCode-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."bbcode" or (errorHandler.buildDepError "bbcode"))
            ];
          buildable = true;
          };
        };
      };
    }