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
      identifier = { name = "corenlp-types"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "pk@intrepidus.pl";
      author = "Gargantext team";
      homepage = "https://gitlab.iscpif.fr/gargantext/corenlp-types";
      url = "";
      synopsis = "Types for interaction with CoreNLP";
      description = "This library introduces types that make it easier to work with [CorenNLP](https://stanfordnlp.github.io/CoreNLP/) server responses (JSON).\n\nIt is mostly a fork of [`corenlp-parser`](https://hackage.haskell.org/package/corenlp-parser-0.4.0.0) however without the rockdb dependency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."corenlp-types" or (errorHandler.buildDepError "corenlp-types"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }