{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
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
      identifier = {
        name = "persistent-test";
        version = "2.0.0.3";
      };
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
      "persistent-test" = {
        depends  = (((([
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.HUnit)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.aeson-compat)
          (hsPkgs.lifted-base)
          (hsPkgs.network)
          (hsPkgs.path-pieces)
          (hsPkgs.http-api-data)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.unliftio)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.exceptions)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.transformers-base)
          (hsPkgs.attoparsec)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.monad-logger)
          (hsPkgs.hashable)
          (hsPkgs.cereal)
          (hsPkgs.silently)
          (hsPkgs.blaze-builder)
          (hsPkgs.mtl)
          (hsPkgs.fast-logger)
          (hsPkgs.semigroups)
          (hsPkgs.scientific)
          (hsPkgs.resource-pool)
          (hsPkgs.exceptions)
          (hsPkgs.tagged)
          (hsPkgs.old-locale)
        ] ++ pkgs.lib.optional (!flags.postgresql && !flags.mysql && !flags.mongodb && !flags.zookeeper) (hsPkgs.persistent-sqlite)) ++ pkgs.lib.optionals (flags.postgresql) [
          (hsPkgs.persistent-postgresql)
          (hsPkgs.postgresql-simple)
          (hsPkgs.postgresql-libpq)
        ]) ++ pkgs.lib.optionals (flags.mysql) [
          (hsPkgs.persistent-mysql)
          (hsPkgs.mysql-simple)
          (hsPkgs.mysql)
        ]) ++ pkgs.lib.optionals (flags.mongodb) [
          (hsPkgs.persistent-mongoDB)
          (hsPkgs.mongoDB)
          (hsPkgs.cereal)
          (hsPkgs.bson)
          (hsPkgs.process)
        ]) ++ pkgs.lib.optionals (flags.zookeeper) [
          (hsPkgs.persistent-zookeeper)
          (hsPkgs.hzk)
          (hsPkgs.binary)
          (hsPkgs.utf8-string)
          (hsPkgs.process)
        ];
      };
      exes = {
        "persistent-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.persistent-test)
            (hsPkgs.persistent)
            (hsPkgs.hspec)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.resourcet)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }