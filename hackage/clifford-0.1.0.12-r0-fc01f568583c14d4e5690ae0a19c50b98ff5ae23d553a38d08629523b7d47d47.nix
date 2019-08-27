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
      identifier = { name = "clifford"; version = "0.1.0.12"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sophie@traumapony.org";
      author = "Sophie Taylor";
      homepage = "http://github.com/spacekitteh/haskell-clifford";
      url = "";
      synopsis = "A Clifford algebra library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."permutation" or (buildDepError "permutation"))
          (hsPkgs."data-ordlist" or (buildDepError "data-ordlist"))
          (hsPkgs."converge" or (buildDepError "converge"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."stream-fusion" or (buildDepError "stream-fusion"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."nats" or (buildDepError "nats"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."MemoTrie" or (buildDepError "MemoTrie"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clifford" or (buildDepError "clifford"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."nats" or (buildDepError "nats"))
            ];
          };
        };
      benchmarks = {
        "basic-ops" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."clifford" or (buildDepError "clifford"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."stream-fusion" or (buildDepError "stream-fusion"))
            ];
          };
        };
      };
    }