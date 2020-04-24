{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-search-demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "full-text-search"; version = "0.2.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "search-demo" = {
          depends = (pkgs.lib).optionals (!(!flags.build-search-demo)) [
            (hsPkgs."full-text-search" or ((hsPkgs.pkgs-errors).buildDepError "full-text-search"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."tokenize" or ((hsPkgs.pkgs-errors).buildDepError "tokenize"))
            (hsPkgs."snowball" or ((hsPkgs.pkgs-errors).buildDepError "snowball"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = if !flags.build-search-demo then false else true;
          };
        };
      tests = {
        "qc-props" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }