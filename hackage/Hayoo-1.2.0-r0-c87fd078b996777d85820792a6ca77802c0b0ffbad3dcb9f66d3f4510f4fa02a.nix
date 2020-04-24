{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or ((hsPkgs.pkgs-errors).buildDepError "Holumbus-Searchengine"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bzlib" or ((hsPkgs.pkgs-errors).buildDepError "bzlib"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."enummapset" or ((hsPkgs.pkgs-errors).buildDepError "enummapset"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."hxt-cache" or ((hsPkgs.pkgs-errors).buildDepError "hxt-cache"))
            (hsPkgs."hxt-charproperties" or ((hsPkgs.pkgs-errors).buildDepError "hxt-charproperties"))
            (hsPkgs."hxt-curl" or ((hsPkgs.pkgs-errors).buildDepError "hxt-curl"))
            (hsPkgs."hxt-http" or ((hsPkgs.pkgs-errors).buildDepError "hxt-http"))
            (hsPkgs."hxt-regex-xmlschema" or ((hsPkgs.pkgs-errors).buildDepError "hxt-regex-xmlschema"))
            (hsPkgs."hxt-xpath" or ((hsPkgs.pkgs-errors).buildDepError "hxt-xpath"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ];
          buildable = true;
          };
        "hayooSearch" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Holumbus-Searchengine" or ((hsPkgs.pkgs-errors).buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hack" or ((hsPkgs.pkgs-errors).buildDepError "hack"))
            (hsPkgs."hack-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hack-contrib"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or ((hsPkgs.pkgs-errors).buildDepError "hxt-unicode"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xhtml-combinators" or ((hsPkgs.pkgs-errors).buildDepError "xhtml-combinators"))
            ] ++ [
            (hsPkgs."hack-handler-simpleserver" or ((hsPkgs.pkgs-errors).buildDepError "hack-handler-simpleserver"))
            ];
          buildable = true;
          };
        "hayooSnap" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Holumbus-Searchengine" or ((hsPkgs.pkgs-errors).buildDepError "Holumbus-Searchengine"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."hxt-unicode" or ((hsPkgs.pkgs-errors).buildDepError "hxt-unicode"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."xhtml-combinators" or ((hsPkgs.pkgs-errors).buildDepError "xhtml-combinators"))
            ];
          buildable = true;
          };
        };
      };
    }