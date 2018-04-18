{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      fast = false;
      bytestring-builder = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson";
          version = "1.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2016 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
        maintainer = "Adam Bergmark <adam@bergmark.nl>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/aeson";
        url = "";
        synopsis = "Fast JSON parsing and encoding";
        description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nTo get started, see the documentation for the @Data.Aeson@ module\nbelow.\n\nParsing performance on a late 2013 MacBook Pro (2.6GHz Core i7),\nrunning 64-bit GHC 7.10.1, for mostly-English tweets from Twitter's\nJSON search API:\n\n* 6.4 KB payloads, English: 7570 msg\\/sec (47.6 MB\\/sec)\n\n* 14.6 KB payloads, Japanese: 3261 msg\\/sec (46.6 MB\\/sec)\n\nEncoding performance on the same machine and data:\n\n* 6.4 KB payloads, English: 22738 msg\\/sec (142.9 MB\\/sec)\n\n* 14.6 KB payloads, Japanese: 15911 msg\\/sec (227.4 MB\\/sec)\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
        buildType = "Simple";
      };
      components = {
        aeson = {
          depends  = (([
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.unordered-containers
            hsPkgs.vector
          ] ++ (if _flags.bytestring-builder
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [
              hsPkgs.bytestring
            ])) ++ optionals (!compiler.isGhc) [
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.fail
          ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats;
        };
        tests = {
          tests = {
            depends  = ((([
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.base-orphans
              hsPkgs.containers
              hsPkgs.dlist
              hsPkgs.generic-deriving
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.tagged
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.time-locale-compat
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.quickcheck-instances
            ] ++ (if _flags.bytestring-builder
              then [
                hsPkgs.bytestring
                hsPkgs.bytestring-builder
              ]
              else [
                hsPkgs.bytestring
              ])) ++ optionals (!compiler.isGhc) [
              hsPkgs.semigroups
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats) ++ pkgs.lib.optional compiler.isGhc hsPkgs.hashable-time;
          };
        };
      };
    }