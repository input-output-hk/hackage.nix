{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa";
          version = "3.1.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "High performance, regular, shape polymorphic parallel arrays.";
        description = "Repa provides high performance, regular, multi-dimensional, shape polymorphic\nparallel arrays. All numeric data is stored unboxed. Functions written with\nthe Repa combinators are automatically parallel provided you supply\n+RTS -Nwhatever on the command line when running the program.";
        buildType = "Simple";
      };
      components = {
        repa = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.QuickCheck
            hsPkgs.template-haskell
          ];
        };
      };
    }