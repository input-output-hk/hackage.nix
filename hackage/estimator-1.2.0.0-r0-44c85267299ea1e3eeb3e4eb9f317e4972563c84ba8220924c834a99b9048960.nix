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
      specVersion = "1.10";
      identifier = { name = "estimator"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Galois, Inc.";
      maintainer = "smaccm@galois.com";
      author = "Jamey Sharp";
      homepage = "https://github.com/GaloisInc/estimator";
      url = "";
      synopsis = "State-space estimation algorithms such as Kalman Filters";
      description = "The goal of this library is to simplify implementation and use of\nstate-space estimation algorithms, such as Kalman Filters. The\ninterface for constructing models is isolated as much as possible from\nthe specifics of a given algorithm, so swapping out a Kalman Filter\nfor a Bayesian Particle Filter should involve a minimum of effort.\n\nThis implementation is designed to support symbolic types, such as\nfrom <http://hackage.haskell.org/package/sbv sbv> or\n<http://hackage.haskell.org/package/ivory ivory>. As a result you can\ngenerate code in another language, such as C, from a model written\nusing this package; or run static analyses on your model.\n\nAlso included is a sophisticated sensor fusion example in\n\"Numeric.Estimator.Model.SensorFusion\", which may be useful in its own\nright.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          ];
        };
      };
    }