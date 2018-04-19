{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mongodb-queue";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "greg@gregweber.info";
        author = "Greg Weber";
        homepage = "https://github.com/gregwebs/haskell-mongodb-queue";
        url = "";
        synopsis = "a queue using MongoDB";
        description = "";
        buildType = "Simple";
      };
      components = {
        mongodb-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.mongoDB
            hsPkgs.transformers
            hsPkgs.monad-control
            hsPkgs.text
            hsPkgs.network
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mongoDB
              hsPkgs.transformers
              hsPkgs.monad-control
              hsPkgs.text
              hsPkgs.network
              hsPkgs.hspec
            ];
          };
        };
      };
    }