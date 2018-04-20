{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "BerkeleyDB";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "John McCall, 2007";
        maintainer = "rjmccall@gmail.com";
        author = "John McCall";
        homepage = "http://www.cs.pdx.edu/~rjmccall/hackage/BerkeleyDB/";
        url = "";
        synopsis = "Bindings for Berkeley DB v1.x";
        description = "Provides Haskell bindings for Berkeley DB v1.x, a simple file-backed\ndatabase library which is included by default with many UNIX\ndistributions.  Databases may be organized in one of four methods:\nin a hashtable, in a b-tree, in a stream of fixed-length records,\nand in a stream of variable-length records.  Custom comparison\nand hash functions are supported.  Most of the standard database\nAPI is supported.\n\nThis implementation *seems* stable, inasmuch as I don't know of any\nglaring flaws, but I haven't done anything that could even jokingly\nbe referred to as coverage testing.";
        buildType = "Custom";
      };
      components = {
        BerkeleyDB = {
          depends  = [ hsPkgs.base ];
        };
      };
    }