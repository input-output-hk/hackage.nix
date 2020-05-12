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
      specVersion = "1.10";
      identifier = { name = "reflex-gloss-scene"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Oliver Batchelor";
      maintainer = "saulzar@gmail.com";
      author = "Oliver Batchelor";
      homepage = "https://github.com/saulzar/reflex-gloss-scene";
      url = "";
      synopsis = "A simple scene-graph using reflex and gloss";
      description = "A scenegraph library using gloss and gloss-reflex, with support for picking,\ncontinuous time animations and monad based switching. An example of a framework\ncreated using the reflex-transformers package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."gloss-rendering" or (errorHandler.buildDepError "gloss-rendering"))
          (hsPkgs."reflex-gloss" or (errorHandler.buildDepError "reflex-gloss"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-transformers" or (errorHandler.buildDepError "reflex-transformers"))
          (hsPkgs."reflex-animation" or (errorHandler.buildDepError "reflex-animation"))
          (hsPkgs."dependent-sum" or (errorHandler.buildDepError "dependent-sum"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "animations" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-transformers" or (errorHandler.buildDepError "reflex-transformers"))
            (hsPkgs."reflex-gloss-scene" or (errorHandler.buildDepError "reflex-gloss-scene"))
            (hsPkgs."reflex-animation" or (errorHandler.buildDepError "reflex-animation"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "collections" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-transformers" or (errorHandler.buildDepError "reflex-transformers"))
            (hsPkgs."reflex-gloss-scene" or (errorHandler.buildDepError "reflex-gloss-scene"))
            (hsPkgs."reflex-animation" or (errorHandler.buildDepError "reflex-animation"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "frpzoo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-transformers" or (errorHandler.buildDepError "reflex-transformers"))
            (hsPkgs."reflex-animation" or (errorHandler.buildDepError "reflex-animation"))
            (hsPkgs."reflex-gloss-scene" or (errorHandler.buildDepError "reflex-gloss-scene"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }