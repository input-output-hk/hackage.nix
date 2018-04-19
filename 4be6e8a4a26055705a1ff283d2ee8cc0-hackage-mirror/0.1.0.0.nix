{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackage-mirror";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "FPComplete";
        maintainer = "tim@fpcomplete.com";
        author = "John Wiegley";
        homepage = "http://fpcomplete.com";
        url = "";
        synopsis = "Simple mirroring utility for Hackage";
        description = "Package allows you to mirror all of hackage to your own s3 bucket.";
        buildType = "Simple";
      };
      components = {
        hackage-mirror = {
          depends  = [
            hsPkgs.aws
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.cryptohash
            hsPkgs.data-default
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.filepath
            hsPkgs.http-conduit
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.old-locale
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.shakespeare
            hsPkgs.stm
            hsPkgs.tar
            hsPkgs.template-haskell
            hsPkgs.temporary
            hsPkgs.text
            hsPkgs.thyme
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          hackage-mirror = {
            depends  = [
              hsPkgs.base
              hsPkgs.hackage-mirror
              hsPkgs.monad-logger
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }