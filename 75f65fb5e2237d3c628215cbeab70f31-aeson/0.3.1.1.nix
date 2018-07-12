{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson";
          version = "0.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "http://github.com/mailrank/aeson";
        url = "";
        synopsis = "Fast JSON parsing and generation";
        description = "A JSON parsing and generation library optimized for ease of use\nand high performance.\n\nParsing performance with GHC 6.12.3 on a late 2010 MacBook Pro\n(2.66GHz Core i7), for mostly-English tweets from Twitter's JSON\nsearch API:\n\n* 854 bytes: 21054 msg\\/sec (17.1 MB/sec)\n\n* 6.4 KB: 4545 msg\\/sec (28.6 MB/sec)\n\n* 31.2 KB: 856 msg\\/sec (26.1 MB/sec)\n\n* 61.5 KB: 403 msg\\/sec (24.2 MB/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped:\n\n* 14.6 KB: 1250 msg\\/sec (17.9 MB/sec)\n\n* 44.1 KB: 363 msg\\/sec (15.6 MB/sec)\n\nEncoding performance on the same machine and data:\n\n* 854 bytes: 10647 msg\\/sec (8.7 MB/sec)\n\n* 6.4 KB: 2098 msg\\/sec (13.2 MB/sec)\n\n* 31.2 KB: 422 msg\\/sec (12.9 MB/sec)\n\n* 61.5 KB: 219 msg\\/sec (13.2 MB/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
        buildType = "Simple";
      };
      components = {
        "aeson" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.bytestring-show
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.monads-fd
            hsPkgs.old-locale
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }