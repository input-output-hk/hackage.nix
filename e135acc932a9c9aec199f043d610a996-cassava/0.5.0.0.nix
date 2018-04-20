{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      pre-bytestring-0-10-4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cassava";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Johan Tibell\n(c) 2012 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
        maintainer = "hvr@gnu.org";
        author = "Johan Tibell";
        homepage = "https://github.com/hvr/cassava";
        url = "";
        synopsis = "A CSV parsing and encoding library";
        description = "A CSV parsing and encoding library optimized for ease of use and high\nperformance.";
        buildType = "Simple";
      };
      components = {
        cassava = {
          depends  = (([
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.Only
          ] ++ (if _flags.pre-bytestring-0-10-4
            then [
              hsPkgs.bytestring
              hsPkgs.bytestring-builder
            ]
            else [
              hsPkgs.bytestring
              hsPkgs.text-short
            ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim) ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.fail
            hsPkgs.semigroups
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cassava
              hsPkgs.hashable
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ] ++ pkgs.lib.optionals (!compiler.isGhc) [
              hsPkgs.fail
              hsPkgs.semigroups
            ];
          };
        };
      };
    }