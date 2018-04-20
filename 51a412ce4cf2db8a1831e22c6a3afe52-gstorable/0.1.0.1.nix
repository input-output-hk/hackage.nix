{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gstorable";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012, Hideyuki Tanaka, 2018, Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Hideyuki Tanaka";
        homepage = "";
        url = "";
        synopsis = "Generic implementation of Storable";
        description = "Forked version of the @generic-storable@ package with updated bounds and improved ergonomics.";
        buildType = "Simple";
      };
      components = {
        gstorable = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          generic-storable-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.generic-storable
            ];
          };
        };
      };
    }