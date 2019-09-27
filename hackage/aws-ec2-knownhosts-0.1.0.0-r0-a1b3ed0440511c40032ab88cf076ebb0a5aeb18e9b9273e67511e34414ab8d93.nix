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
      identifier = { name = "aws-ec2-knownhosts"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2015";
      maintainer = "luke@bitnomial.com, opensource@bitnomial.com";
      author = "Luke Hoersten";
      homepage = "http://github.com/bitnomial/aws-ec2-knownhosts";
      url = "";
      synopsis = "Capture and manage AWS EC2 known_host pubkeys";
      description = "Capture and manage AWS EC2 known_host pubkeys via the AWS API command line tool.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          ];
        buildable = true;
        };
      exes = {
        "aws-ec2-pubkeys" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aws-ec2-knownhosts" or (buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          buildable = true;
          };
        "aws-ec2-knownhosts" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aws-ec2-knownhosts" or (buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          buildable = true;
          };
        "aws-ec2-keysync" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."aws-ec2-knownhosts" or (buildDepError "aws-ec2-knownhosts"))
            (hsPkgs."io-streams" or (buildDepError "io-streams"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            ];
          buildable = true;
          };
        };
      };
    }