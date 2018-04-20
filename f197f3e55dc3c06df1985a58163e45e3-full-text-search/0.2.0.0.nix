{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "full-text-search";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2014 Duncan Coutts, 2014 Well-Typed LLP";
        maintainer = "Duncan Coutts <duncan@well-typed.com>";
        author = "Duncan Coutts";
        homepage = "";
        url = "";
        synopsis = "In-memory full text search engine";
        description = "An in-memory full text search engine library. It lets you\nrun full-text queries on a collection of your documents.\n\nFeatures:\n\n* Can search over any type of \\\"document\\\".\n(You explain how to extract search terms from them.)\n\n* Supports documents with multiple fields\n(e.g. title, body)\n\n* Supports documents with non-term features\n(e.g. quality score, page rank)\n\n* Uses the state of the art BM25F ranking function\n\n* Adjustable ranking parameters (including field weights\nand non-term feature scores)\n\n* In-memory but quite compact. It does not keep a copy of\nyour original documents.\n\nIt is independent of the document type, so you have to\nwrite the document-specific parts: extracting search terms\nand any case-normalisation or stemming. This is quite\neasy using libraries such as\n<http://hackage.haskell.org/package/tokenize tokenize> and\n<http://hackage.haskell.org/package/snowball snowball>.\n\nFor an example, see the code for the\n<http://hackage.haskell.org/package/hackage-server hackage-server>\nwhere it is used for the package search feature.";
        buildType = "Simple";
      };
      components = {
        full-text-search = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }