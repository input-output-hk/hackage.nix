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
      specVersion = "1.24";
      identifier = { name = "symantic-xml"; version = "2.0.0.20200523"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+symantic-xml@sourcephile.fr>";
      author = "Julien Moutinho <julm+symantic-xml@sourcephile.fr>";
      homepage = "";
      url = "";
      synopsis = "Library for reading, validating and writing XML.";
      description = "Symantics for XML (eXtensible Markup Language)\nand RNC (RelaxNG Compact).\n\nDISCLAIMER: This is an experimental library, use at your own risks.\n\nMotivation: Writing a schema using Haskell combinators\nand deriving automatically a reader, a writer\nand a documentation from it.\n\nExample:\n\n* <https://hackage.haskell.org/package/symantic-atom symantic-atom>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."symantic-base" or (errorHandler.buildDepError "symantic-base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "symantic-xml-test" = {
          depends = [
            (hsPkgs."symantic-xml" or (errorHandler.buildDepError "symantic-xml"))
            (hsPkgs."symantic-base" or (errorHandler.buildDepError "symantic-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."treeseq" or (errorHandler.buildDepError "treeseq"))
          ];
          buildable = true;
        };
      };
    };
  }