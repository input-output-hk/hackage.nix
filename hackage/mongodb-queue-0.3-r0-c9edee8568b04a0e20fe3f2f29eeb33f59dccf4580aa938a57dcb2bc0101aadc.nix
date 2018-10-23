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
        version = "0.3";
      };
      license = "MIT";
      copyright = "Daggerboard Inc. makers of docmunch.com";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Daggerboard Inc. Greg Weber";
      homepage = "https://github.com/docmunch/haskell-mongodb-queue";
      url = "";
      synopsis = "message queue using MongoDB";
      description = "simple messaging queue using MongoDB. Designed to be worse than real queueing infrastructure but easy to start using if you are already running MongoDB. Rather than polling it Uses tailable cursors, which should actually make this fairly efficient. However, tailable cursors have a bug that makes them use a large amount of CPU when the system is idle.";
      buildType = "Simple";
    };
    components = {
      "mongodb-queue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.mongoDB)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lifted-base)
            (hsPkgs.mongoDB)
            (hsPkgs.transformers)
            (hsPkgs.monad-control)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.hspec)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }