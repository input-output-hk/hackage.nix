{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prim-ref";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/prim-array#readme";
        url = "";
        synopsis = "Primitive byte array with type variable";
        description = "";
        buildType = "Simple";
      };
      components = {
        prim-ref = {
          depends  = [
            hsPkgs.base
            hsPkgs.primitive
            hsPkgs.ghc-prim
            hsPkgs.semigroups
          ];
        };
      };
    }