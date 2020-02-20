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
    flags = { llvm = false; opt = true; with-apps = true; with-execs = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "lol-cpp"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Eric Crockett,\nChris Peikert";
      maintainer = "Eric Crockett <ecrockett@gmail.com>,\nChad Sharp <cmlsharp@umich.edu>";
      author = "Eric Crockett <ecrockett0@gmail.com>,\nChris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/lol#readme";
      url = "";
      synopsis = "A fast C++ backend for <https://hackage.haskell.org/package/lol lol>.";
      description = "Λ ⚬ λ (Lol) is a general-purpose library for ring-based lattice cryptography. This package provides a C++ implementation of Lol's Tensor interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."lol" or (buildDepError "lol"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-lol-apps-cpp" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          buildable = if !flags.with-apps then false else true;
          };
        };
      benchmarks = {
        "bench-lol-apps-cpp" = {
          depends = [
            (hsPkgs."DRBG" or (buildDepError "DRBG"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-apps" or (buildDepError "lol-apps"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            ];
          buildable = if !flags.with-apps then false else true;
          };
        "bench-lol-cpp" = {
          depends = [
            (hsPkgs."DRBG" or (buildDepError "DRBG"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."lol" or (buildDepError "lol"))
            (hsPkgs."lol-cpp" or (buildDepError "lol-cpp"))
            ];
          buildable = true;
          };
        };
      };
    }