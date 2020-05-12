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
    flags = { hayoosnap = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Hayoo"; version = "1.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2007 - 2012 Uwe Schmidt, Sebastian M. Schlatt and Timo B. Kranz";
      maintainer = "Timo B. Huebel <tbh@holumbus.org>";
      author = "Sebastian M. Schlatt, Timo B. Huebel, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "The Hayoo! search engine for Haskell API search on hackage";
      description = "The Hayoo! search engine based no the Holumbus framework provides a document indexer\nand a crawler to build indexes over Haddock generated API documentation and packages\nas well as a query interface for these indexes.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hayooIndexer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or (errorHandler.buildDepError "Holumbus-Searchengine"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."enummapset" or (errorHandler.buildDepError "enummapset"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-cache" or (errorHandler.buildDepError "hxt-cache"))
            (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
            (hsPkgs."hxt-curl" or (errorHandler.buildDepError "hxt-curl"))
            (hsPkgs."hxt-http" or (errorHandler.buildDepError "hxt-http"))
            (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        "hayooSearch" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or (errorHandler.buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
            (hsPkgs."hack-contrib" or (errorHandler.buildDepError "hack-contrib"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or (errorHandler.buildDepError "hxt-unicode"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xhtml-combinators" or (errorHandler.buildDepError "xhtml-combinators"))
            ] ++ [
            (hsPkgs."hack-handler-simpleserver" or (errorHandler.buildDepError "hack-handler-simpleserver"))
            ];
          buildable = true;
          };
        "hayooSnap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Holumbus-Searchengine" or (errorHandler.buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or (errorHandler.buildDepError "hxt-unicode"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."xhtml-combinators" or (errorHandler.buildDepError "xhtml-combinators"))
            ];
          buildable = true;
          };
        };
      };
    }