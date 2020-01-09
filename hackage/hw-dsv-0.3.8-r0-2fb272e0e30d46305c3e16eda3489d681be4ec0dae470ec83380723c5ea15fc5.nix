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
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-dsv"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-dsv#readme";
      url = "";
      synopsis = "Unbelievably fast streaming DSV file parser";
      description = "Please see the README on Github at <https://github.com/haskell-works/hw-dsv#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."transformers" or (buildDepError "transformers"));
        buildable = true;
        };
      exes = {
        "hw-dsv" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."appar" or (buildDepError "appar"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-ip" or (buildDepError "hw-ip"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."transformers" or (buildDepError "transformers"));
          buildable = true;
          };
        };
      tests = {
        "hw-dsv-space" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "hw-dsv-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or (buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."doctest-discover" or (buildDepError "doctest-discover"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or (buildToolDepError "doctest-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hw-dsv" or (buildDepError "hw-dsv"))
            ];
          buildable = true;
          };
        };
      };
    }