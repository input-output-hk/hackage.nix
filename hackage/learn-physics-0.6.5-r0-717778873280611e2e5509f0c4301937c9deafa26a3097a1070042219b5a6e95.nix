let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "learn-physics"; version = "0.6.5"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."gloss" or (buildDepError "gloss"))
          (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
          (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
          (hsPkgs."spatial-math" or (buildDepError "spatial-math"))
          ];
        buildable = true;
        };
      exes = {
        "learn-physics-PlaneWave" = {
          depends = [
            (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine3D" = {
          depends = [
            (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-LorentzForceSimulation" = {
          depends = [
            (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
            (hsPkgs."spatial-math" or (buildDepError "spatial-math"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-BCircularLoop" = {
          depends = [
            (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-sunEarth" = {
          depends = [
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-eFieldLine2D" = {
          depends = [
            (hsPkgs."gloss" or (buildDepError "gloss"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-Projectile" = {
          depends = [
            (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        "learn-physics-NMR" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."learn-physics" or (buildDepError "learn-physics"))
            ];
          buildable = true;
          };
        };
      };
    }