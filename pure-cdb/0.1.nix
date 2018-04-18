{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pure-cdb";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Boris Sukholitko <boriss@gmail.com>";
        maintainer = "Boris Sukholitko <boriss@gmail.com>";
        author = "Boris Sukholitko <boriss@gmail.com>";
        homepage = "https://github.com/bosu/pure-cdb";
        url = "";
        synopsis = "Another pure-haskell CDB (Constant Database) implementation";
        description = "A library for reading and writing CDB (Constant Database) files.\n\nCDB files are immutable key-value stores, designed for extremely fast and memory-efficient\nconstruction and lookup. They can be as large as 4GB, and at no point in their construction\nor use must all data be loaded into memory. CDB files can contain multiple values for a\ngiven key.\n\nFor more information on the CDB file format, please see: <http://cr.yp.to/cdb.html>\n\nPlease note, that there is another pure Haskell CDB library on Hackage:\n<http://hackage.haskell.org/package/hs-cdb>, using memory mapped bytestrings for IO.\nIt served as an inspiration for this package.";
        buildType = "Simple";
      };
      components = {
        pure-cdb = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.directory
          ];
        };
        tests = {
          Test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-simple
              hsPkgs.pure-cdb
              hsPkgs.vector
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.Unixutils
            ];
          };
          Words = {
            depends  = [
              hsPkgs.base
              hsPkgs.pure-cdb
              hsPkgs.Unixutils
              hsPkgs.bytestring
            ];
          };
        };
      };
    }