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
    flags = { bmi2 = false; sse42 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-json-standard-cursor"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 - 2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-json-standard-cursor#readme";
      url = "";
      synopsis = "Memory efficient JSON parser";
      description = "Memory efficient JSON parser. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bits-extra" or (buildDepError "bits-extra"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
          (hsPkgs."mmap" or (buildDepError "mmap"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."word8" or (buildDepError "word8"))
          ];
        };
      exes = {
        "hw-json-standard-cursor" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
            (hsPkgs."hw-json-simd" or (buildDepError "hw-json-simd"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hw-json-standard-cursor" or (buildDepError "hw-json-standard-cursor"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      tests = {
        "hw-json-standard-cursor-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hw-balancedparens" or (buildDepError "hw-balancedparens"))
            (hsPkgs."hw-bits" or (buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or (buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or (buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."hw-json-standard-cursor" or (buildDepError "hw-json-standard-cursor"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."mmap" or (buildDepError "mmap"))
            (hsPkgs."hw-json-standard-cursor" or (buildDepError "hw-json-standard-cursor"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          };
        };
      };
    }