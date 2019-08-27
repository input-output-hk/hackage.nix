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
      identifier = {
        name = "distributed-fork-aws-lambda";
        version = "0.0.2.0";
        };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "Utku Demir <me@utdemir.com>";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "AWS Lambda backend for distributed-fork.";
      description = "<https://aws.amazon.com/lambda AWS Lambda> backend for <http://hackage.haskell.org/package/distributed-fork distributed-fork>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."distributed-fork" or (buildDepError "distributed-fork"))
          (hsPkgs."SHA" or (buildDepError "SHA"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
          (hsPkgs."amazonka" or (buildDepError "amazonka"))
          (hsPkgs."amazonka-cloudformation" or (buildDepError "amazonka-cloudformation"))
          (hsPkgs."amazonka-core" or (buildDepError "amazonka-core"))
          (hsPkgs."amazonka-lambda" or (buildDepError "amazonka-lambda"))
          (hsPkgs."amazonka-s3" or (buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-sqs" or (buildDepError "amazonka-sqs"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."elf" or (buildDepError "elf"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stratosphere" or (buildDepError "stratosphere"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."distributed-fork" or (buildDepError "distributed-fork"))
            (hsPkgs."distributed-fork-aws-lambda" or (buildDepError "distributed-fork-aws-lambda"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }