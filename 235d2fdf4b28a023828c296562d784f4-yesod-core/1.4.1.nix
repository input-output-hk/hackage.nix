{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "yesod-core";
          version = "1.4.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Creation of type-safe, RESTful web applications.";
        description = "Yesod is a framework designed to foster creation of RESTful web application that have strong compile-time guarantees of correctness. It also affords space efficient code and portability to many deployment backends, from CGI to stand-alone serving.\n\nThe Yesod documentation site <http://www.yesodweb.com/> has much more information, tutorials and information on some of the supporting packages, like Hamlet and Persistent.";
        buildType = "Simple";
      };
      components = {
        yesod-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.path-pieces
            hsPkgs.shakespeare
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.clientsession
            hsPkgs.random
            hsPkgs.cereal
            hsPkgs.old-locale
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.monad-control
            hsPkgs.transformers-base
            hsPkgs.cookie
            hsPkgs.http-types
            hsPkgs.case-insensitive
            hsPkgs.parsec
            hsPkgs.directory
            hsPkgs.vector
            hsPkgs.aeson
            hsPkgs.fast-logger
            hsPkgs.wai-logger
            hsPkgs.monad-logger
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.lifted-base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.data-default
            hsPkgs.safe
            hsPkgs.warp
            hsPkgs.unix-compat
            hsPkgs.conduit-extra
            hsPkgs.exceptions
            hsPkgs.deepseq
          ];
        };
        tests = {
          test-routes = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.random
              hsPkgs.path-pieces
              hsPkgs.HUnit
            ];
          };
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.wai
              hsPkgs.yesod-core
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.http-types
              hsPkgs.random
              hsPkgs.blaze-builder
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.lifted-base
              hsPkgs.resourcet
              hsPkgs.network
              hsPkgs.async
              hsPkgs.conduit-extra
              hsPkgs.shakespeare
              hsPkgs.streaming-commons
              hsPkgs.wai-extra
            ];
          };
        };
        benchmarks = {
          widgets = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.yesod-core
              hsPkgs.blaze-html
            ];
          };
        };
      };
    }