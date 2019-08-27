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
      identifier = { name = "xxhash-ffi"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/haskell-haskey/xxhash-ffi#readme";
      url = "";
      synopsis = "Bindings to the C implementation the xxHash algorithm";
      description = "Bindings to the C implementation the xxHash algorithm. xxHash provides 32-bit and 64-bit extremely fast non-cryptographic hash functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      tests = {
        "xxhash-ffi-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xxhash-ffi" or (buildDepError "xxhash-ffi"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      benchmarks = {
        "xxhash-ffi-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."xxhash-ffi" or (buildDepError "xxhash-ffi"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."digest" or (buildDepError "digest"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."murmur-hash" or (buildDepError "murmur-hash"))
            (hsPkgs."xxhash" or (buildDepError "xxhash"))
            ];
          };
        };
      };
    }