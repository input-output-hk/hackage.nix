{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "sstable";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 marius a. eriksen";
        maintainer = "marius a. eriksen";
        author = "marius a. eriksen";
        homepage = "";
        url = "";
        synopsis = "SSTables in Haskell";
        description = "\nThis library implements SSTables as described in the Bigtable\npaper: <http://labs.google.com/papers/bigtable.html>\n";
        buildType = "Simple";
      };
      components = {
        sstable = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.iteratee
            hsPkgs.directory
          ];
        };
        exes = {
          sstable = {
            depends  = [ hsPkgs.cmdargs ];
          };
          testSSTable = {
            depends  = pkgs.lib.optionals _flags.tests [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }