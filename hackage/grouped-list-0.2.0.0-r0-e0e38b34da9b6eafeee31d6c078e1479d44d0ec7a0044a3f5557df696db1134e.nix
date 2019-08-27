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
      identifier = { name = "grouped-list"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md";
      url = "";
      synopsis = "Grouped lists. Equal consecutive elements are grouped.";
      description = "Grouped lists work like regular lists, except for two conditions:\n\n* Grouped lists are always finite. Attempting to construct an infinite\ngrouped list will result in an infinite loop.\n\n* Grouped lists internally represent consecutive equal elements as only\none, hence the name of /grouped lists/.\n\nThis mean that grouped lists are ideal for cases where the list has many\nrepetitions (like @[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@, although they might\npresent some deficiencies in the absent of repetitions.\n\n/Warning: this library is in early development./";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or (buildDepError "transformers"));
        };
      tests = {
        "grouped-list-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grouped-list" or (buildDepError "grouped-list"))
            ];
          };
        "grouped-list-properties" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grouped-list" or (buildDepError "grouped-list"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      benchmarks = {
        "grouped-list-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."grouped-list" or (buildDepError "grouped-list"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }