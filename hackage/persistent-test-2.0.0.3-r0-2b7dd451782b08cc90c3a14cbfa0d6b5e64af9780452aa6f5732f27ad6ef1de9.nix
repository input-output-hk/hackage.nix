{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-compat" or (errorHandler.buildDepError "aeson-compat"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ] ++ (pkgs.lib).optional (!flags.postgresql && !flags.mysql && !flags.mongodb && !flags.zookeeper) (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))) ++ (pkgs.lib).optionals (flags.postgresql) [
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          ]) ++ (pkgs.lib).optionals (flags.mysql) [
          (hsPkgs."persistent-mysql" or (errorHandler.buildDepError "persistent-mysql"))
          (hsPkgs."mysql-simple" or (errorHandler.buildDepError "mysql-simple"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          ]) ++ (pkgs.lib).optionals (flags.mongodb) [
          (hsPkgs."persistent-mongoDB" or (errorHandler.buildDepError "persistent-mongoDB"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ]) ++ (pkgs.lib).optionals (flags.zookeeper) [
          (hsPkgs."persistent-zookeeper" or (errorHandler.buildDepError "persistent-zookeeper"))
          (hsPkgs."hzk" or (errorHandler.buildDepError "hzk"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "persistent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent-test" or (errorHandler.buildDepError "persistent-test"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }