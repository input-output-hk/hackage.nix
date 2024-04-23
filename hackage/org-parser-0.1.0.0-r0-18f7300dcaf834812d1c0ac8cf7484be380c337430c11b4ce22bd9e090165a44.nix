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
      identifier = { name = "org-parser"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2022 lucasvreis";
      maintainer = "@lucasvr:matrix.org";
      author = "Lucas V. R.";
      homepage = "";
      url = "";
      synopsis = "Parser for Org Mode documents.";
      description = "org-parser provides a parser for Org Mode documents.\nThe Org document is parsed into an AST similar to org-element's, and\naims to be accurate and performant where possible. The types have\n'multiwalk' instances that allow traversing and querying the AST, as well\nas ordering the AST semantically by its leaf text. It also features a\ntest suite comparing it with org-element against many corner cases.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."multiwalk" or (errorHandler.buildDepError "multiwalk"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."multiwalk" or (errorHandler.buildDepError "multiwalk"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."replace-megaparsec" or (errorHandler.buildDepError "replace-megaparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
            (hsPkgs."org-parser" or (errorHandler.buildDepError "org-parser"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }