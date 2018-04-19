{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vect-floating-accelerate";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Charles Durham";
        maintainer = "Charles Durham <cpdurham@gmail.com>";
        author = "Charles Durham";
        homepage = "";
        url = "";
        synopsis = "Accelerate instances for vect-floating types";
        description = "Provides accelerate compatibility of vect-floating <http://hackage.haskell.org/package/vect-floating>.\nIncludes Vec2, Normal2, Vec3, Normal3, Vec4, Normal4, Quaternion and UnitQuaternion.\nCredit to Trevor L. McDonell <http://github.com/tmcdonell> for examples on how to make data types compatible with accelerate.";
        buildType = "Simple";
      };
      components = {
        vect-floating-accelerate = {
          depends  = [
            hsPkgs.base
            hsPkgs.accelerate
            hsPkgs.vect-floating
          ];
        };
      };
    }