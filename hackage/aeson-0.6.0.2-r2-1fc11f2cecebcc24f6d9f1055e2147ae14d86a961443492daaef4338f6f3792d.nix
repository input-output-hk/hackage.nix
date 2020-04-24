{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "aeson"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/bos/aeson";
      url = "";
      synopsis = "Fast JSON parsing and encoding";
      description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nTo get started, see the documentation for the @Data.Aeson@ module\nbelow.\n\nFor release notes, see\n<https://github.com/bos/aeson/blob/master/release-notes.markdown>\n\n/Note/: if you use GHCi or Template Haskell, please see the\n@README@ file for important details about building this package,\nand other packages that depend on it:\n<https://github.com/bos/aeson#readme>\n\nParsing performance on a late 2010 MacBook Pro (2.66GHz Core i7),\nfor mostly-English tweets from Twitter's JSON search API:\n\n* 0.8 KB, 32-bit GHC 6.12.3: 30538 msg\\/sec (24.9 MB\\/sec)\n\n* 0.8 KB, 64-bit GHC 7.0.3: 31204 msg\\/sec (25.4 MB\\/sec)\n\n* 6.4 KB, 32-bit GHC 6.12.3: 6731 msg\\/sec (42.3 MB\\/sec)\n\n* 6.4 KB, 64-bit GHC 7.0.3: 6627 msg\\/sec (41.7 MB\\/sec)\n\n* 11.8 KB, 32-bit GHC 6.12.3: 3751 msg\\/sec (43.2 MB\\/sec)\n\n* 11.8 KB, 64-bit GHC 7.0.3: 3381 msg\\/sec (38.9 MB\\/sec)\n\n* 31.2 KB, 32-bit GHC 6.12.3: 1306 msg\\/sec (39.8 MB\\/sec)\n\n* 31.2 KB, 64-bit GHC 7.0.3: 1132 msg\\/sec (34.5 MB\\/sec)\n\n* 61.5 KB, 32-bit GHC 6.12.3: 616 msg\\/sec (37.0 MB\\/sec)\n\n* 61.5 KB, 64-bit GHC 7.0.3: 534 msg\\/sec (32.1 MB\\/sec)\n\nHandling heavily-escaped text is a little more work.  Here is\nparsing performance with Japanese tweets, where much of the text\nis entirely Unicode-escaped.\n\n* 14.6 KB, 32-bit GHC 6.12.3: 2315 msg\\/sec (33.1 MB\\/sec)\n\n* 14.6 KB, 64-bit GHC 7.0.3: 1986 msg\\/sec (28.4 MB\\/sec)\n\n* 44.1 KB, 32-bit GHC 6.12.3: 712 msg\\/sec (30.7 MB\\/sec)\n\n* 44.1 KB, 64-bit GHC 7.0.3: 634 msg\\/sec (27.3 MB\\/sec)\n\n* 82.9 KB, 32-bit GHC 6.12.3: 377 msg\\/sec (30.5 MB\\/sec)\n\n* 82.9 KB, 64-bit GHC 7.0.3: 332 msg\\/sec (26.9 MB\\/sec)\n\nEncoding performance on the same machine and data:\n\n* English, 854 bytes: 43439 msg\\/sec (35.4 MB/sec)\n\n* English, 6.4 KB: 7127 msg\\/sec (44.8 MB/sec)\n\n* Engish, 61.5 KB: 765 msg\\/sec (46.0 MB/sec)\n\n* Japanese, 14.6 KB: 4727 msg\\/sec (67.5 MB/sec)\n\n* Japanese, 44.1 KB: 1505 msg\\/sec (64.8 MB/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.2.1") [
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }