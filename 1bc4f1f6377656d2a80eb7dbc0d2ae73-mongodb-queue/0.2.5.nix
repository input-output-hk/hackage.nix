{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mongodb-queue";
          version = "0.2.5";
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
            hsPkgs.base
            hsPkgs.lifted-base
            hsPkgs.mongoDB
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.text
            hsPkgs.network
            hsPkgs.data-default
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.lifted-base
              hsPkgs.mongoDB
              hsPkgs.transformers
              hsPkgs.monad-control
              hsPkgs.text
              hsPkgs.network
              hsPkgs.hspec
              hsPkgs.data-default
            ];
          };
        };
      };
    }