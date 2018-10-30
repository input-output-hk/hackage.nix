{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      developer = false;
      blaze-builder = false;
      new-bytestring-builder = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "aeson";
        version = "0.7.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2014 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/aeson";
      url = "";
      synopsis = "Fast JSON parsing and encoding";
      description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nTo get started, see the documentation for the @Data.Aeson@ module\nbelow.\n\nParsing performance on an early 2011 MacBook Pro (2.2GHz Core i7),\nrunning 64-bit GHC 7.6.3, for mostly-English tweets from Twitter's\nJSON search API:\n\n* 0.8 KB: 34124 msg\\/sec (27.8 MB\\/sec)\n\n* 6.4 KB: 6833 msg\\/sec (43.0 MB\\/sec)\n\n* 11.8 KB: 3410 msg\\/sec (39.2 MB\\/sec)\n\n* 31.2 KB: 1157 msg\\/sec (35.3 MB\\/sec)\n\n* 61.5 KB: 542 msg\\/sec (32.5 MB\\/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped.\n\n* 14.6 KB: 2101 msg\\/sec (30.0 MB\\/sec)\n\n* 44.1 KB: 667 msg\\/sec (28.7 MB\\/sec)\n\n* 82.9 KB: 360 msg\\/sec (29.2 MB\\/sec)\n\nEncoding performance on the same machine and data:\n\n* English, 0.8 KB: 109697 msg\\/sec (89.3 MB\\/sec)\n\n* English, 6.4 KB: 18517 msg\\/sec (116.4 MB\\/sec)\n\n* Engish, 61.5 KB: 1963 msg\\/sec (118.0 MB\\/sec)\n\n* Japanese, 14.6 KB: 12140 msg\\/sec (173.5 MB\\/sec)\n\n* Japanese, 44.1 KB: 3980 msg\\/sec (171.3 MB\\/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.scientific)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ [
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.2.1") [
          (hsPkgs.ghc-prim)
          (hsPkgs.dlist)
        ]) ++ (if flags.blaze-builder
          then [ (hsPkgs.blaze-builder) ]
          else [ (hsPkgs.bytestring) ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }