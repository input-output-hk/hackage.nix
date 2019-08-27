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
      identifier = { name = "imprevu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Corentin Dupont";
      maintainer = "Corentin Dupont";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Reactive programming language based on a DSL";
      description = "A DSL to express events";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."DebugTraceHelpers" or (buildDepError "DebugTraceHelpers"))
          (hsPkgs."Boolean" or (buildDepError "Boolean"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-recurrence" or (buildDepError "time-recurrence"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."validation" or (buildDepError "validation"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."shortcut" or (buildDepError "shortcut"))
          (hsPkgs."NoTrace" or (buildDepError "NoTrace"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Imprevu" or (buildDepError "Imprevu"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            ];
          };
        };
      };
    }