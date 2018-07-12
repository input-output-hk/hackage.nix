{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      new-typerep = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "concrete-typerep";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "reiner.pope@gmail.com";
        author = "Reiner Pope";
        homepage = "";
        url = "";
        synopsis = "Binary and Hashable instances for TypeRep";
        description = "Binary and Hashable instances for TypeRep";
        buildType = "Simple";
      };
      components = {
        "concrete-typerep" = {
          depends  = [
            hsPkgs.binary
            hsPkgs.hashable
          ] ++ (if _flags.new-typerep
            then [ hsPkgs.base hsPkgs.ghc ]
            else [ hsPkgs.base ]);
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.concrete-typerep
              hsPkgs.hashable
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }