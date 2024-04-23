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
      specVersion = "1.0";
      identifier = { name = "morfette"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <gchrupala@lsv.uni-saarland.de>";
      author = "Grzegorz Chrupała";
      homepage = "http://sites.google.com/site/morfetteweb/";
      url = "";
      synopsis = "A tool for supervised learning of morphology";
      description = "Morfette is a tool for supervised learning of inflectional\nmorphology. Given a corpus of sentences annotated with lemmas\nand morphological labels, and optionally a lexicon, morfette\nlearns how to morphologically analyse new sentences.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "morfette" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
          buildable = true;
        };
      };
    };
  }