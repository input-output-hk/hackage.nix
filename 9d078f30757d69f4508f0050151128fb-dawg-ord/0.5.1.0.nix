{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dawg-ord";
          version = "0.5.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015 Jakub Waszczuk";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/dawg-ord";
        url = "";
        synopsis = "Directed acyclic word graphs";
        description = "The library implements /directed acyclic word graphs/ (DAWGs) internally\nrepresented as /minimal acyclic deterministic finite-state automata/.\nThe implemented version of DAWG can be seen as a map from\nsequences of alphabet symbols (keys) to values.\n\nThe library allows to build DAWGs over any symbols and values\nprovided that they both have `Ord` instances (see the\n\"Data.DAWG.Ord\" module).\nIt also provides a fast insert operation which can be used to\nconstruct DAWGs on-the-fly.";
        buildType = "Simple";
      };
      components = {
        "dawg-ord" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.dawg-ord
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.smallcheck
              hsPkgs.tasty-smallcheck
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.HUnit
            ];
          };
        };
      };
    }