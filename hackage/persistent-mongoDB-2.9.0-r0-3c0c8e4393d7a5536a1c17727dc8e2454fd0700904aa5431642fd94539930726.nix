{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { high_precision_date = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-mongoDB"; version = "2.9.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/persistent";
      url = "";
      synopsis = "Backend for the persistent library using mongoDB.";
      description = "MongoDB backend for the persistent library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.persistent)
          (hsPkgs.aeson)
          (hsPkgs.bson)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.http-api-data)
          (hsPkgs.mongoDB)
          (hsPkgs.network)
          (hsPkgs.path-pieces)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.persistent)
            (hsPkgs.persistent-mongoDB)
            (hsPkgs.persistent-qq)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-test)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.mongoDB)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio-core)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
        };
      };
    }