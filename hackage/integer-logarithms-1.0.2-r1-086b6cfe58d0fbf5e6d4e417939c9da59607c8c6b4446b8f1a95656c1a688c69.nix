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
    flags = { integer-gmp = true; check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "integer-logarithms"; version = "1.0.2"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Daniel Fischer";
      homepage = "https://github.com/phadej/integer-logarithms";
      url = "";
      synopsis = "Integer logarithms.";
      description = "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"\nfrom the arithmoi package.\n\nAlso provides \"GHC.Integer.Logarithms.Compat\" and\n\"Math.NumberTheory.Power.Natural\" modules, as well as some\nadditional functions in migrated modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (buildDepError "nats"))) ++ (if flags.integer-gmp
          then [ (hsPkgs."integer-gmp" or (buildDepError "integer-gmp")) ]
          else [
            (hsPkgs."integer-simple" or (buildDepError "integer-simple"))
            ]);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (buildDepError "nats"));
          };
        };
      };
    }