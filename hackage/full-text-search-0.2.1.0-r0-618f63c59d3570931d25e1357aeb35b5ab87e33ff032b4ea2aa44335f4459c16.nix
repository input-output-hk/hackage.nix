{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build-search-demo = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "full-text-search";
        version = "0.2.1.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.text)
        ];
      };
      exes = {
        "search-demo" = {
          depends  = pkgs.lib.optionals (!(!flags.build-search-demo)) [
            (hsPkgs.full-text-search)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.tokenize)
            (hsPkgs.snowball)
            (hsPkgs.transformers)
            (hsPkgs.split)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.mtl)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
      tests = {
        "qc-props" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }