{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
      library-only = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-mangopay";
          version = "1.11.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Prowdsponsor";
        maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
        author = "JP Moresmau <jpmoresmau@gmail.com>";
        homepage = "https://github.com/prowdsponsor/mangopay";
        url = "";
        synopsis = "Yesod library for MangoPay API access";
        description = "This package provides convenience functions when using both\n@yesod@ and @mangopay@ packages.  It also includes a test\napplication that is built when the library-only flag is set to\n@False@.";
        buildType = "Simple";
      };
      components = {
        yesod-mangopay = {
          depends  = [
            hsPkgs.base
            hsPkgs.mangopay
            hsPkgs.containers
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.lifted-base
            hsPkgs.text
            hsPkgs.time
            hsPkgs.yesod
            hsPkgs.yesod-core
            hsPkgs.persistent-template
          ];
        };
        exes = {
          yesod-mangopay = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.http-conduit
              hsPkgs.mangopay
              hsPkgs.text
              hsPkgs.time
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-mangopay
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.fast-logger
              hsPkgs.hamlet
              hsPkgs.hjsmin
              hsPkgs.monad-control
              hsPkgs.monad-logger
              hsPkgs.persistent
              hsPkgs.persistent-postgresql
              hsPkgs.persistent-template
              hsPkgs.resourcet
              hsPkgs.shakespeare
              hsPkgs.template-haskell
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.wai-logger
              hsPkgs.warp
              hsPkgs.yaml
              hsPkgs.yesod-auth
              hsPkgs.yesod-form
              hsPkgs.yesod-persistent
              hsPkgs.yesod-static
              hsPkgs.lifted-base
              hsPkgs.country-codes
            ];
          };
        };
      };
    }