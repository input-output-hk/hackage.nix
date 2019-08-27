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
      specVersion = "1.10";
      identifier = { name = "hw-simd"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-simd#readme";
      url = "";
      synopsis = "SIMD library";
      description = "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      tests = {
        "hw-simd-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hw-hspec-hedgehog" or (buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-hedgehog" or (buildDepError "hw-hedgehog"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hw-simd" or (buildDepError "hw-simd"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        };
      };
    }