{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "axiomatic-classes";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "simon@cse.yorku.ca";
        author = "Simon Hudon";
        homepage = "";
        url = "";
        synopsis = "Specify axioms for type classes and quickCheck all available instances";
        description = "Provides a way to specify axioms for type classes\nand to quickCheck all available instances against\nthem";
        buildType = "Simple";
      };
      components = {
        axiomatic-classes = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.QuickCheck
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.th-printf
            hsPkgs.control-invariants
            hsPkgs.portable-template-haskell-lens
            hsPkgs.quickcheck-report
            hsPkgs.semigroups
            hsPkgs.monad-loops
          ];
        };
      };
    }