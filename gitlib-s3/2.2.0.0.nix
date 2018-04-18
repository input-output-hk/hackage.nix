{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gitlib-s3";
          version = "2.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@fpcomplete.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Gitlib repository backend for storing Git objects in Amazon S3";
        description = "Gitlib repository backend for storing Git objects in Amazon S3.";
        buildType = "Simple";
      };
      components = {
        gitlib-s3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.gitlib
            hsPkgs.gitlib-libgit2
            hsPkgs.ghc-prim
            hsPkgs.hlibgit2
            hsPkgs.aeson
            hsPkgs.attempt
            hsPkgs.aws
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          smoke = {
            depends  = [
              hsPkgs.base
              hsPkgs.gitlib
              hsPkgs.gitlib-s3
              hsPkgs.gitlib-test
              hsPkgs.gitlib-libgit2
              hsPkgs.hlibgit2
              hsPkgs.aws
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.monad-logger
              hsPkgs.resourcet
              hsPkgs.temporary
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }