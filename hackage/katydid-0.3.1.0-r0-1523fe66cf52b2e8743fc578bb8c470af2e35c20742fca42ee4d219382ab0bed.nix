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
      identifier = { name = "katydid"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Walter Schulze";
      maintainer = "awalterschulze@gmail.com";
      author = "Walter Schulze";
      homepage = "https://github.com/katydid/katydid-haskell";
      url = "";
      synopsis = "A haskell implementation of Katydid";
      description = "A haskell implementation of Katydid\n\nThis includes:\n\n- Relapse, a validation Language\n- Parsers for JSON, XML and an abstraction for trees\n\nYou should only need the following modules:\n\n- The Relapse module is used for validation.\n- The Json and XML modules are used to create Json and XML trees that can be validated.\n\nIf you want to implement your own parser then you can look at the Parsers module\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."ilist" or (buildDepError "ilist"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "katydid-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."katydid" or (buildDepError "katydid"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      tests = {
        "katydid-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."katydid" or (buildDepError "katydid"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."primes" or (buildDepError "primes"))
            (hsPkgs."ilist" or (buildDepError "ilist"))
            ];
          };
        };
      benchmarks = {
        "criterion-benchmarks" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."katydid" or (buildDepError "katydid"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }