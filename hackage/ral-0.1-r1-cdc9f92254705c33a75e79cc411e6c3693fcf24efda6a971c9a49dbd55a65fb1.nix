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
    flags = { adjunctions = true; distributive = true; semigroupoids = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ral"; version = "0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Random access lists";
      description = "This package provides ordinary random access list, 'RAList', and also\na length indexed variant, 'RAVec'.\n\nThe data structure allows fast cons-operation (like ordinary list) but also fast random access (like non-functional arrays).\n\nFor @lens@ or @optics@ support see [ral-lens](https://hackage.haskell.org/package/ral-lens) and [ral-optics](https://hackage.haskell.org/package/ral-optics) packages respectively.\n\n=== Similar packages\n\nThis packages don't provide length-indexed variant, and their 'RAList' has\nopaque structure.\n\n* https://hackage.haskell.org/package/ralist\n* https://hackage.haskell.org/package/random-access-list";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."bin" or (buildDepError "bin"))
          (hsPkgs."fin" or (buildDepError "fin"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.distributive) ([
          (hsPkgs."distributive" or (buildDepError "distributive"))
          ] ++ (pkgs.lib).optional (flags.adjunctions) (hsPkgs."adjunctions" or (buildDepError "adjunctions")))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"));
        buildable = true;
        };
      benchmarks = {
        "ral-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."ral" or (buildDepError "ral"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }