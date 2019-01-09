{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "learn-physics"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott N. Walck <walck@lvc.edu>";
      author = "Scott N. Walck";
      homepage = "";
      url = "";
      synopsis = "Haskell code for learning physics";
      description = "A library of functions for vector calculus,\ncalculation of electric field, electric flux,\nmagnetic field, and other quantities in classical mechanics,\nelectromagnetic theory, and quantum mechanics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
          (hsPkgs.hmatrix)
          (hsPkgs.gloss)
          (hsPkgs.gnuplot)
          (hsPkgs.not-gloss)
          (hsPkgs.spatial-math)
          ];
        };
      exes = {
        "learn-physics-PlaneWave" = {
          depends = [ (hsPkgs.not-gloss) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-eFieldLine3D" = {
          depends = [ (hsPkgs.not-gloss) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-LorentzForceSimulation" = {
          depends = [
            (hsPkgs.not-gloss)
            (hsPkgs.spatial-math)
            (hsPkgs.base)
            (hsPkgs.learn-physics)
            ];
          };
        "learn-physics-BCircularLoop" = {
          depends = [ (hsPkgs.not-gloss) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-sunEarth" = {
          depends = [ (hsPkgs.gloss) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-eFieldLine2D" = {
          depends = [ (hsPkgs.gloss) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-Projectile" = {
          depends = [ (hsPkgs.gnuplot) (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        "learn-physics-NMR" = {
          depends = [ (hsPkgs.base) (hsPkgs.learn-physics) ];
          };
        };
      };
    }