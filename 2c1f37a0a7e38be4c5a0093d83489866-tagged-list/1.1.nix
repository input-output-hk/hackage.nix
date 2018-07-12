{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tagged-list";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
        author = "Gregory Crosswhite";
        homepage = "";
        url = "";
        synopsis = "Lists tagged with a type-level natural number representing their length.";
        description = "This package contains a datatype, 'TaggedList', that provides a fixed-length list\ntagged with a phantom type-level natural number that corresponds to the length of\nthe list.  It also contains some basic operations on these lists, as well as a\ntypeclass for converting tagged lists to and from tuples.\n\nNew in version 1.1:  added function castTag, improved error reporting in fromList,\nand fixed compiler error with GHC 7.0.*";
        buildType = "Simple";
      };
      components = {
        "tagged-list" = {
          depends  = [
            hsPkgs.AbortT-transformers
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.natural-number
            hsPkgs.type-equality
            hsPkgs.type-level-natural-number
            hsPkgs.type-level-natural-number-induction
            hsPkgs.type-level-natural-number-operations
          ];
        };
      };
    }