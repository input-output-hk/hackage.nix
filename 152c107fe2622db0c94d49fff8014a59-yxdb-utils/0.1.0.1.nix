{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yxdb-utils";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "michael.burge@rentrakmail.com";
        author = "Michael Burge";
        homepage = "";
        url = "";
        synopsis = "Utilities for reading and writing Alteryx .yxdb files";
        description = "Two command-line utilities (csv2yxdb and yxdb2csv) that are used to convert csv files with a specific header line into Alteryx .yxdb files.";
        buildType = "Simple";
      };
      components = {
        yxdb-utils = {
          depends  = [
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.Codec-Compression-LZF
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bimap
            hsPkgs.binary
            hsPkgs.binary-conduit
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-combinators
            hsPkgs.conduit-extra
            hsPkgs.containers
            hsPkgs.csv-conduit
            hsPkgs.Decimal
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.ghc-prim
            hsPkgs.lens
            hsPkgs.monad-loops
            hsPkgs.mtl
            hsPkgs.newtype
            hsPkgs.old-locale
            hsPkgs.parsec
            hsPkgs.primitive
            hsPkgs.reinterpret-cast
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.text-binary
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.xml-conduit
            hsPkgs.vector
          ];
        };
        exes = {
          csv2yxdb = {
            depends  = [
              hsPkgs.base
              hsPkgs.yxdb-utils
            ];
          };
          yxdb2csv = {
            depends  = [
              hsPkgs.base
              hsPkgs.yxdb-utils
            ];
          };
        };
        tests = {
          yxdb-tests = {
            depends  = [
              hsPkgs.Codec-Compression-LZF
              hsPkgs.Decimal
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bimap
              hsPkgs.binary
              hsPkgs.binary-conduit
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-combinators
              hsPkgs.conduit-extra
              hsPkgs.containers
              hsPkgs.csv-conduit
              hsPkgs.directory
              hsPkgs.exceptions
              hsPkgs.ghc-prim
              hsPkgs.lens
              hsPkgs.monad-loops
              hsPkgs.mtl
              hsPkgs.newtype
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.primitive
              hsPkgs.quickcheck-instances
              hsPkgs.reinterpret-cast
              hsPkgs.resourcet
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.text-binary
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.xml-conduit
            ];
          };
        };
      };
    }