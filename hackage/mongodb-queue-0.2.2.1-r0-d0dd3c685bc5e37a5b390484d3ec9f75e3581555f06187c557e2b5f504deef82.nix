{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mongodb-queue";
        version = "0.2.2.1";
      };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/haskell-mongodb-queue";
      url = "";
      synopsis = "a message queue using MongoDB";
      description = "";
      buildType = "Simple";
    };
    components = {
      "mongodb-queue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mongoDB)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.network)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mongoDB)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }