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
      specVersion = "2";
      identifier = { name = "zsyntax"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Filippo Sestini";
      maintainer = "sestini.filippo@gmail.com";
      author = "Filippo Sestini";
      homepage = "https://github.com/fsestini/zsyntax#readme";
      url = "";
      synopsis = "Automated theorem prover for the Zsyntax biochemical calculus";
      description = "An automated theorem prover for Zsyntax, a\nlogical calculus for molecular biology inspired by linear logic,\nthat can be used to automatically verify biological\npathways expressed as logical sequents.\nThe prover implements automatic proof search for the\nZsyntax sequent calculus (ZBS), a logical calculus for\na context-sensitive fragment of multiplicative linear\nlogic where sequents are decorated so to account for\nthe biochemical constraints.\nThe theory behind the Zsyntax sequent calculus and its\nproof search procedure is developed in F. Sestini,\nS. Crafa, Proof-search in a context-sensitive logic\nfor molecular biology, Journal of Logic and\nComputation, 2018\n(<https://doi.org/10.1093/logcom/exy028>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."multiset" or (buildDepError "multiset"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "zsyntax-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."zsyntax" or (buildDepError "zsyntax"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."multiset" or (buildDepError "multiset"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }