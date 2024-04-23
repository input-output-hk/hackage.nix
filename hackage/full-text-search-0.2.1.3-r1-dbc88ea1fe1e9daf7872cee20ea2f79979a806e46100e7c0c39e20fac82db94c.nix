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
    flags = { build-search-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "full-text-search"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Duncan Coutts, 2014 Well-Typed LLP,\n2014 IRIS Connect Ltd.";
      maintainer = "Duncan Coutts <duncan@well-typed.com>";
      author = "Duncan Coutts";
      homepage = "";
      url = "";
      synopsis = "In-memory full text search engine";
      description = "An in-memory full text search engine library. It lets you\nrun full-text queries on a collection of your documents.\n\nFeatures:\n\n* Keyword queries and auto-complete\\/auto-suggest queries.\n\n* Can search over any type of \\\"document\\\".\n(You explain how to extract search terms from them.)\n\n* Supports documents with multiple fields\n(e.g. title, body)\n\n* Supports documents with non-term features\n(e.g. quality score, page rank)\n\n* Uses the state of the art BM25F ranking function\n\n* Adjustable ranking parameters (including field weights\nand non-term feature scores)\n\n* In-memory but quite compact. It does not keep a copy of\nyour original documents.\n\n* Quick incremental index updates, making it possible to\nkeep your text search in-sync with your data.\n\nIt is independent of the document type, so you have to\nwrite the document-specific parts: extracting search terms\nand any stop words, case-normalisation or stemming. This\nis quite easy using libraries such as\n<http://hackage.haskell.org/package/tokenize tokenize> and\n<http://hackage.haskell.org/package/snowball snowball>.\n\nThe source package includes a demo to illustrate how to\nuse the library. The demo is a simplified version of how\nthe library is used in the\n<http://hackage.haskell.org/package/hackage-server hackage-server>\nwhere it provides the backend for the package search feature.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "search-demo" = {
          depends = pkgs.lib.optionals (!!flags.build-search-demo) [
            (hsPkgs."full-text-search" or (errorHandler.buildDepError "full-text-search"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
            (hsPkgs."snowball" or (errorHandler.buildDepError "snowball"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ];
          buildable = if !flags.build-search-demo then false else true;
        };
      };
      tests = {
        "qc-props" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }