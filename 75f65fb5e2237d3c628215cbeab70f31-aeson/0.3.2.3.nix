{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
        version = "0.3.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@mailrank.com>";
      author = "Bryan O'Sullivan <bos@mailrank.com>";
      homepage = "http://github.com/mailrank/aeson";
      url = "";
      synopsis = "Fast JSON parsing and generation";
      description = "A JSON parsing and generation library optimized for ease of use\nand high performance.\n\nParsing performance with GHC 6.12.3 on a late 2010 MacBook Pro\n(2.66GHz Core i7), for mostly-English tweets from Twitter's JSON\nsearch API:\n\n* English, 854 bytes: 29029 msg\\/sec (23.6 MB/sec)\n\n* English, 6.4 KB: 6407 msg\\/sec (40.3 MB/sec)\n\n* English, 31.2 KB: 1265 msg\\/sec (38.8 MB/sec)\n\n* English, 61.5 KB: 585 msg\\/sec (35.2 MB/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped:\n\n* Japanese, 14.6 KB: 2227 msg\\/sec (31.9 MB/sec)\n\n* Japanese, 44.1 KB: 671 msg\\/sec (29.6 MB/sec)\n\nEncoding performance on the same machine and data:\n\n* English, 854 bytes: 43439 msg\\/sec (35.4 MB/sec)\n\n* English, 6.4 KB: 7127 msg\\/sec (44.8 MB/sec)\n\n* Engish, 61.5 KB: 765 msg\\/sec (46.0 MB/sec)\n\n* Japanese, 14.6 KB: 4727 msg\\/sec (67.5 MB/sec)\n\n* Japanese, 44.1 KB: 1505 msg\\/sec (64.8 MB/sec)\n\nWith GHC 7.0.2, the story is mixed: parsing is 20-40% slower than\nGHC 6.12.3, while encoding performance ranges from about the same\nto twice as fast (on numeric data).\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
      buildType = "Simple";
    };
    components = {
      "aeson" = {
        depends  = ([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.integer-gmp)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11") (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11")) (hsPkgs.integer);
      };
    };
  }