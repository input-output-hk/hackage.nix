{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hayoosnap = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Hayoo";
          version = "1.2.0";
        };
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
          hayooIndexer = {
            depends  = [
              hsPkgs.base
              hsPkgs.Holumbus-Searchengine
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.bzlib
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.enummapset
              hsPkgs.filepath
              hsPkgs.hxt
              hsPkgs.hxt-cache
              hsPkgs.hxt-charproperties
              hsPkgs.hxt-curl
              hsPkgs.hxt-http
              hsPkgs.hxt-regex-xmlschema
              hsPkgs.hxt-xpath
              hsPkgs.network
              hsPkgs.old-time
              hsPkgs.parsec
              hsPkgs.process
              hsPkgs.tar
              hsPkgs.zlib
            ];
          };
          hayooSearch = {
            depends  = [
              hsPkgs.base
              hsPkgs.Holumbus-Searchengine
              hsPkgs.hack
              hsPkgs.hack-contrib
              hsPkgs.hslogger
              hsPkgs.hxt-unicode
              hsPkgs.json
              hsPkgs.text
              hsPkgs.xhtml-combinators
            ] ++ [
              hsPkgs.hack-handler-simpleserver
            ];
          };
          hayooSnap = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Holumbus-Searchengine
              hsPkgs.hslogger
              hsPkgs.hxt-unicode
              hsPkgs.json
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.xhtml-combinators
            ];
          };
        };
      };
    }