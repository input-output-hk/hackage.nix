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
      specVersion = "1.6";
      identifier = { name = "ddci-core"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language interactive interpreter.";
      description = "Disciple Core is an explicitly typed language based on System-F2, intended\nas an intermediate representation for a compiler. In addition to the features of\nSystem-F2 it supports region, effect and closure typing. Evaluation order is\nleft-to-right call-by-value by default, but explicit lazy evaluation is also supported.\nThere is also a capability system to track whether objects are mutable or constant,\nand to ensure that computations that perform visible side effects are not suspended with\nlazy evaluation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."ddc-base" or (buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (buildDepError "ddc-core"))
            (hsPkgs."ddc-core-eval" or (buildDepError "ddc-core-eval"))
            (hsPkgs."ddc-core-simpl" or (buildDepError "ddc-core-simpl"))
            ];
          };
        };
      };
    }