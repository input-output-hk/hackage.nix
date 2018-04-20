{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      developer = false;
      fast = false;
      bytestring-builder = false;
      cffi = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aeson";
          version = "1.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011-2016 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
        maintainer = "Adam Bergmark <adam@bergmark.nl>";
        author = "Bryan O'Sullivan <bos@serpentine.com>";
        homepage = "https://github.com/bos/aeson";
        url = "";
        synopsis = "Fast JSON parsing and encoding";
        description = "A JSON parsing and encoding library optimized for ease of use\nand high performance.\n\nTo get started, see the documentation for the @Data.Aeson@ module\nbelow.\n\n(A note on naming: in Greek mythology, Aeson was the father of Jason.)";
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
            hsPkgs.th-abstraction
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.unordered-containers
            hsPkgs.uuid-types
            hsPkgs.vector
          ] ++ (if _flags.bytestring-builder
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [
              hsPkgs.bytestring
            ])) ++ pkgs.lib.optionals (!compiler.isGhc) [
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
              hsPkgs.integer-logarithms
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.base-orphans
              hsPkgs.base16-bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.dlist
              hsPkgs.filepath
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
              hsPkgs.uuid-types
              hsPkgs.vector
              hsPkgs.quickcheck-instances
            ] ++ (if _flags.bytestring-builder
              then [
                hsPkgs.bytestring
                hsPkgs.bytestring-builder
              ]
              else [
                hsPkgs.bytestring
              ])) ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.semigroups
              hsPkgs.transformers
              hsPkgs.transformers-compat
            ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats) ++ pkgs.lib.optional compiler.isGhc hsPkgs.hashable-time;
          };
        };
      };
    }