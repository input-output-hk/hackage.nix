{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "splaytree";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jwlato@gmail.com";
        author = "John W. Lato";
        homepage = "http://github.com/JohnLato/splaytree";
        url = "";
        synopsis = "Provides an annotated splay tree";
        description = "Annotated splay trees (compare to 2-3 finger trees)";
        buildType = "Simple";
      };
      components = {
        splaytree = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
          ];
        };
        tests = {
          testSplay = {
            depends  = [
              hsPkgs.base
              hsPkgs.splaytree
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }