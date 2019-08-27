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
      identifier = { name = "kazura-queue"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Asakamirai";
      maintainer = "asakamirai_hackage@towanowa.net";
      author = "Asakamirai";
      homepage = "https://github.com/asakamirai/kazura-queue#readme";
      url = "";
      synopsis = "Fast concurrent queues much inspired by unagi-chan";
      description = "\\\"kazura-queue\\\" provides an implementation of FIFO queue.\nIt is faster than Chan, TQueue or TChan by the benefit of fetch-and-add\ninstruction.\n\nMain motivation of this package is to solve some difficulty of\n\"unagi-chan\" package.\n\n- In \"unagi-chan\", the item in the queue/chan can be lost when async\nexception is throwed to the read thread while waiting for read.\n(Although it has handler to recover lost item,\nit is difficult to keep FIFO in such case)\n\n- In \"unagi-chan\", garbage items of the queue cannot be collected\nimmediately.\nSince the buffer in the queue has the reference to the items until the\nbuffer is garbage-collected.\n\n\\\"kazura-queue\\\" is slightly slower than \"unagi-chan\" instead of solving\nthese issues.\n\n\\\"kazura-queue\\\" lost broadcast function to improve the second issue.\nIt means that kazura-queue is not \\\"Chan\\\" but is just \\\"Queue\\\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          ];
        };
      tests = {
        "kazura-queue-doctest" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."kazura-queue" or (buildDepError "kazura-queue"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            ];
          };
        "kazura-queue-test" = {
          depends = [
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."kazura-queue" or (buildDepError "kazura-queue"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      benchmarks = {
        "kazura-queue-bench" = {
          depends = [
            (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."kazura-queue" or (buildDepError "kazura-queue"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }