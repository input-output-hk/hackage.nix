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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aws-kinesis-client"; version = "0.4.0.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2013-2015 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "A producer & consumer client library for AWS Kinesis";
      description = "This package provides a Producer client for bulk-writing messages to a\nKinesis stream through a bounded queue, and a Consumer client for reading\nmessages round-robin from all shards of a Kinesis stream.  Additionally, a\nrudimentary CLI interface to the Consumer is provided.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aws" or (buildDepError "aws"))
          (hsPkgs."aws-kinesis" or (buildDepError "aws-kinesis"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-carousel" or (buildDepError "data-carousel"))
          (hsPkgs."enclosed-exceptions" or (buildDepError "enclosed-exceptions"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-action" or (buildDepError "lens-action"))
          (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."nats" or (buildDepError "nats"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stm-queue-extras" or (buildDepError "stm-queue-extras"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "kinesis-cli" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (buildDepError "base-unicode-symbols"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aws" or (buildDepError "aws"))
            (hsPkgs."aws-general" or (buildDepError "aws-general"))
            (hsPkgs."aws-kinesis" or (buildDepError "aws-kinesis"))
            (hsPkgs."aws-kinesis-client" or (buildDepError "aws-kinesis-client"))
            (hsPkgs."aws-configuration-tools" or (buildDepError "aws-configuration-tools"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."kan-extensions" or (buildDepError "kan-extensions"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."lifted-async" or (buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }