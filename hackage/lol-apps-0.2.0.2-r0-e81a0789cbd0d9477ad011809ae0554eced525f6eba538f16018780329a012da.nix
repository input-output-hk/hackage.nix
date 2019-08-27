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
    flags = { llvm = false; opt = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lol-apps"; version = "0.2.0.2"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "Lattice-based cryptographic applications using <https://hackage.haskell.org/package/lol lol>.";
      description = "This library contains example cryptographic applications built using\n<https://hackage.haskell.org/package/lol lol>,\na general-purpose library for ring-based lattice cryptography.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lol" or (buildDepError "lol"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."protocol-buffers" or (buildDepError "protocol-buffers"))
          (hsPkgs."protocol-buffers-descriptor" or (buildDepError "protocol-buffers-descriptor"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."split" or (buildDepError "split"))
          ];
        };
      exes = {
        "homomprf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."DRBG" or (buildDepError "DRBG"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."singletons" or (buildDepError "singletons"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        "khprf" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            ];
          };
        "symmshe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            ];
          };
        };
      tests = {
        "test-apps" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."lol-repa" or (buildDepError "lol-repa"))
            (hsPkgs."lol-tests" or (buildDepError "lol-tests"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          };
        };
      benchmarks = {
        "bench-apps" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."DRBG" or (buildDepError "DRBG"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-benches" or (buildDepError "lol-benches"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."lol-repa" or (buildDepError "lol-repa"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            ];
          };
        };
      };
    }