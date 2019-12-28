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
      specVersion = "2.2";
      identifier = { name = "reg-alloc-graph-color"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Register allocation by graph colorization";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."private" or (buildDepError "private")) ];
        buildable = true;
        };
      sublibs = {
        "private" = {
          depends = [
            (hsPkgs."Map" or (buildDepError "Map"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."lenz" or (buildDepError "lenz"))
            (hsPkgs."lenz-mtl" or (buildDepError "lenz-mtl"))
            (hsPkgs."lenz-template" or (buildDepError "lenz-template"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."peano" or (buildDepError "peano"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."util" or (buildDepError "util"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."logict" or (buildDepError "logict"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."util" or (buildDepError "util"))
            (hsPkgs."private" or (buildDepError "private"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."reg-alloc-graph-color" or (buildDepError "reg-alloc-graph-color"))
            ];
          buildable = true;
          };
        };
      };
    }