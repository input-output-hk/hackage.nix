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
      identifier = { name = "hcobs"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dario Bertini";
      maintainer = "berdario@gmail.com";
      author = "Dario Bertini";
      homepage = "https://github.com/berdario/hcobs#readme";
      url = "";
      synopsis = "An implementation of the Consistent Overhead Byte Stuffing algorithm";
      description = "An implementation of the Consistent Overhead Byte Stuffing algorithm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        };
      tests = {
        "hcobs-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hcobs" or (buildDepError "hcobs"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."mmorph" or (buildDepError "mmorph"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            ];
          };
        "hcobs-weigh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hcobs" or (buildDepError "hcobs"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            ];
          };
        };
      benchmarks = {
        "mainbench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            ];
          };
        };
      };
    }