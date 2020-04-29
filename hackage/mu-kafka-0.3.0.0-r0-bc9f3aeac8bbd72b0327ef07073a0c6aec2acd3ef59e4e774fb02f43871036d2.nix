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
      identifier = { name = "mu-kafka"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://github.com/higherkindness/mu-haskell";
      url = "";
      synopsis = "Utilities for interoperation between Mu and Kafka";
      description = "This package provides simple interoperation between Mu and Kafka using @hw-kafka-client@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."avro" or (buildDepError "avro"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."hw-kafka-client" or (buildDepError "hw-kafka-client"))
          (hsPkgs."hw-kafka-conduit" or (buildDepError "hw-kafka-conduit"))
          (hsPkgs."mu-avro" or (buildDepError "mu-avro"))
          (hsPkgs."mu-schema" or (buildDepError "mu-schema"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          ];
        buildable = true;
        };
      };
    }