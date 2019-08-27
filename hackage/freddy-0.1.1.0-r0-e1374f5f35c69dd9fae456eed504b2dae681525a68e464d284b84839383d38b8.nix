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
      identifier = { name = "freddy"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "indrek@urgas.eu";
      author = "Indrek Juhkam";
      homepage = "https://github.com/salemove/freddy-hs";
      url = "";
      synopsis = "RabbitMQ Messaging API supporting request-response";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."amqp" or (buildDepError "amqp"))
          (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."amqp" or (buildDepError "amqp"))
            (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."async" or (buildDepError "async"))
            ];
          };
        };
      };
    }