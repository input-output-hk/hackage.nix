{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson";
          version = "0.3.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2011 MailRank, Inc.";
        maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
        author = "Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "http://github.com/mailrank/aeson";
        url = "";
        synopsis = "Fast JSON parsing and encoding";
        description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nParsing performance on a late 2010 MacBook Pro (2.66GHz Core i7),\nfor mostly-English tweets from Twitter's JSON search API:\n\n* 0.8 KB, 32-bit GHC 6.12.3: 29945 msg\\/sec (24.4 MB\\/sec)\n\n* 0.8 KB, 64-bit GHC 7.0.3: 29280 msg\\/sec (23.8 MB\\/sec)\n\n* 6.4 KB, 32-bit GHC 6.12.3: 6684 msg\\/sec (42.0 MB\\/sec)\n\n* 6.4 KB, 64-bit GHC 7.0.3: 5893 msg\\/sec (37.1 MB\\/sec)\n\n* 11.8 KB, 32-bit GHC 6.12.3: 3610 msg\\/sec (41.5 MB\\/sec)\n\n* 11.8 KB, 64-bit GHC 7.0.3: 3059 msg\\/sec (35.2 MB\\/sec)\n\n* 31.2 KB, 32-bit GHC 6.12.3: 1306 msg\\/sec (39.8 MB\\/sec)\n\n* 31.2 KB, 64-bit GHC 7.0.3: 1050 msg\\/sec (32.0 MB\\/sec)\n\n* 61.5 KB, 32-bit GHC 6.12.3: 594 msg\\/sec (35.7 MB\\/sec)\n\n* 61.5 KB, 64-bit GHC 7.0.3: 505 msg\\/sec (30.3 MB\\/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped.\n\n* 14.6 KB, 32-bit GHC 6.12.3: 2257 msg\\/sec (32.2 MB\\/sec)\n\n* 14.6 KB, 64-bit GHC 7.0.3: 1931 msg\\/sec (27.6 MB\\/sec)\n\n* 44.1 KB, 32-bit GHC 6.12.3: 697 msg\\/sec (30.0 MB\\/sec)\n\n* 44.1 KB, 64-bit GHC 7.0.3: 611 msg\\/sec (26.3 MB\\/sec)\n\n* 82.9 KB, 32-bit GHC 6.12.3: 368 msg\\/sec (29.8 MB\\/sec)\n\n* 82.9 KB, 64-bit GHC 7.0.3: 322 msg\\/sec (26.0 MB\\/sec)\n\nEncoding performance on the same machine and data:\n\n* English, 854 bytes: 43439 msg\\/sec (35.4 MB/sec)\n\n* English, 6.4 KB: 7127 msg\\/sec (44.8 MB/sec)\n\n* Engish, 61.5 KB: 765 msg\\/sec (46.0 MB/sec)\n\n* Japanese, 14.6 KB: 4727 msg\\/sec (67.5 MB/sec)\n\n* Japanese, 44.1 KB: 1505 msg\\/sec (64.8 MB/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
        buildType = "Simple";
      };
      components = {
        aeson = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.mtl
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