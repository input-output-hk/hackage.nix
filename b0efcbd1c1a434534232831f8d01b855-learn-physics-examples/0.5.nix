{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "learn-physics-examples";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Scott N. Walck <walck@lvc.edu>";
        author = "Scott N. Walck";
        homepage = "";
        url = "";
        synopsis = "examples for learn-physics";
        description = "Executables that use the learn-physics library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          learn-physics-PlaneWave = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-eFieldLine3D = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-LorentzForceSimulation = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.spatial-math
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-BCircularLoop = {
            depends  = [
              hsPkgs.not-gloss
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-sunEarth = {
            depends  = [
              hsPkgs.gloss
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-eFieldLine2D = {
            depends  = [
              hsPkgs.gloss
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
          learn-physics-Projectile = {
            depends  = [
              hsPkgs.gnuplot
              hsPkgs.base
              hsPkgs.learn-physics
            ];
          };
        };
      };
    }