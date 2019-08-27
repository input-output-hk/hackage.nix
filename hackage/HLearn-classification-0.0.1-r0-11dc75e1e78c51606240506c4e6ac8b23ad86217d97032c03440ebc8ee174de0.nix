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
      identifier = { name = "HLearn-classification"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This module is for unsupervised, supervised, and semi-supervised classification tasks.  It is in desperate need of documentation and refactoring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."HLearn-algebra" or (buildDepError "HLearn-algebra"))
          (hsPkgs."HLearn-distributions" or (buildDepError "HLearn-distributions"))
          (hsPkgs."ConstraintKinds" or (buildDepError "ConstraintKinds"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."Safe" or (buildDepError "Safe"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."list-extras" or (buildDepError "list-extras"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."logfloat" or (buildDepError "logfloat"))
          (hsPkgs."math-functions" or (buildDepError "math-functions"))
          (hsPkgs."normaldistribution" or (buildDepError "normaldistribution"))
          ];
        };
      exes = {
        "HLearn-Classification-Demo" = {
          depends = [
            (hsPkgs."HLearn-algebra" or (buildDepError "HLearn-algebra"))
            (hsPkgs."ConstraintKinds" or (buildDepError "ConstraintKinds"))
            (hsPkgs."HLearn-distributions" or (buildDepError "HLearn-distributions"))
            (hsPkgs."HLearn-classification" or (buildDepError "HLearn-classification"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }