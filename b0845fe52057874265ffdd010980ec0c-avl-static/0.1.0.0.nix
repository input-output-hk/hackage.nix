{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avl-static";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "federico.lebron@gmail.com";
        author = "Federico Lebrón";
        homepage = "";
        url = "";
        synopsis = "A compile-time balanced AVL tree.";
        description = "A compile-time balanced AVL tree.";
        buildType = "Simple";
      };
      components = {
        avl-static = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          avl-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.avl-static
            ];
          };
        };
      };
    }