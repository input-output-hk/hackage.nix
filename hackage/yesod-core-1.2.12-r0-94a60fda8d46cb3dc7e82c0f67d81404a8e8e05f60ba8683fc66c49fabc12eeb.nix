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
        name = "yesod-core";
        version = "1.2.12";
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
      "yesod-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.yesod-routes)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.path-pieces)
          (hsPkgs.hamlet)
          (hsPkgs.shakespeare)
          (hsPkgs.shakespeare-js)
          (hsPkgs.shakespeare-css)
          (hsPkgs.shakespeare-i18n)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.clientsession)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.cookie)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          (hsPkgs.fast-logger)
          (hsPkgs.wai-logger)
          (hsPkgs.monad-logger)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.lifted-base)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.data-default)
          (hsPkgs.safe)
          (hsPkgs.warp)
          (hsPkgs.unix-compat)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.wai-test)
            (hsPkgs.wai)
            (hsPkgs.yesod-core)
            (hsPkgs.bytestring)
            (hsPkgs.hamlet)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.text)
            (hsPkgs.http-types)
            (hsPkgs.random)
            (hsPkgs.blaze-builder)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.lifted-base)
            (hsPkgs.resourcet)
            (hsPkgs.network-conduit)
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.conduit-extra)
            (hsPkgs.shakespeare)
            (hsPkgs.streaming-commons)
          ];
        };
      };
      benchmarks = {
        "widgets" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.hamlet)
            (hsPkgs.transformers)
            (hsPkgs.yesod-core)
            (hsPkgs.blaze-html)
          ];
        };
      };
    };
  }