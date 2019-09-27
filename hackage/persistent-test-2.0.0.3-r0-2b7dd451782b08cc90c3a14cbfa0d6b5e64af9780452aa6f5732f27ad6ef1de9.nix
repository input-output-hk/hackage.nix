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
    flags = {
      sqlite = false;
      zookeeper = false;
      mongodb = false;
      postgresql = false;
      mysql = false;
      high_precision_date = false;
      nooverlap = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-test"; version = "2.0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Tests for Persistent";
      description = "Tests for Persistent";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."persistent" or (buildDepError "persistent"))
          (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."aeson-compat" or (buildDepError "aeson-compat"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (buildDepError "unliftio-core"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."silently" or (buildDepError "silently"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ] ++ (pkgs.lib).optional (!flags.postgresql && !flags.mysql && !flags.mongodb && !flags.zookeeper) (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))) ++ (pkgs.lib).optionals (flags.postgresql) [
          (hsPkgs."persistent-postgresql" or (buildDepError "persistent-postgresql"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
          ]) ++ (pkgs.lib).optionals (flags.mysql) [
          (hsPkgs."persistent-mysql" or (buildDepError "persistent-mysql"))
          (hsPkgs."mysql-simple" or (buildDepError "mysql-simple"))
          (hsPkgs."mysql" or (buildDepError "mysql"))
          ]) ++ (pkgs.lib).optionals (flags.mongodb) [
          (hsPkgs."persistent-mongoDB" or (buildDepError "persistent-mongoDB"))
          (hsPkgs."mongoDB" or (buildDepError "mongoDB"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."bson" or (buildDepError "bson"))
          (hsPkgs."process" or (buildDepError "process"))
          ]) ++ (pkgs.lib).optionals (flags.zookeeper) [
          (hsPkgs."persistent-zookeeper" or (buildDepError "persistent-zookeeper"))
          (hsPkgs."hzk" or (buildDepError "hzk"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."process" or (buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "persistent-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."persistent-test" or (buildDepError "persistent-test"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (buildDepError "system-fileio"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }