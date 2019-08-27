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
    flags = { with-chart = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "aws-performance-tests"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2014 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lars@alephcloud.com>";
      author = "Lars Kuhtz <lars@alephcloud.com>";
      homepage = "http://github.com/alephcloud/hs-aws-performance-tests";
      url = "";
      synopsis = "Performance Tests for the Haskell bindings for Amazon Web Services (AWS)";
      description = "Performance Tests for the Haskell bindings for\n<http://hackage.haskell.org/package/aws Amazon Web Services (AWS)>.\n\nAt the current stage this package only has tests for the DynamoDb\nbindings.\n\n/IMPORTANT NOTE/\n\nBy using the dynamo-performace application from this package with your AWS API\ncredentials costs will incure to your AWS account. Depending on the provisioned\ntest table read and write throughput these costs can be in the order of several\ndollars per hour.\n\nAlso be aware that there is an option to keep the table after the tests are finished\n(for example for usage with successive test runs). If you use that option you have to\nmake sure that you delete the table yourself when you don't need it any more.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aws" or (buildDepError "aws"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "dynamodb-performance" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."aws" or (buildDepError "aws"))
            (hsPkgs."aws-performance-tests" or (buildDepError "aws-performance-tests"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."statistics" or (buildDepError "statistics"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ] ++ (pkgs.lib).optionals (flags.with-chart) [
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            ];
          };
        };
      };
    }