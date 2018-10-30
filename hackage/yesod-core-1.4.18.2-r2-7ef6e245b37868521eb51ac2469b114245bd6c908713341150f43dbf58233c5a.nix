{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-core";
        version = "1.4.18.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Creation of type-safe, RESTful web applications.";
      description = "API docs and the README are available at <http://www.stackage.org/package/yesod-core>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.path-pieces)
          (hsPkgs.shakespeare)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.clientsession)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.old-locale)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
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
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.data-default)
          (hsPkgs.safe)
          (hsPkgs.warp)
          (hsPkgs.unix-compat)
          (hsPkgs.conduit-extra)
          (hsPkgs.exceptions)
          (hsPkgs.deepseq)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.word8)
          (hsPkgs.auto-update)
          (hsPkgs.semigroups)
          (hsPkgs.byteable)
        ];
      };
      tests = {
        "test-routes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.random)
            (hsPkgs.path-pieces)
            (hsPkgs.HUnit)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.clientsession)
            (hsPkgs.wai)
            (hsPkgs.yesod-core)
            (hsPkgs.bytestring)
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
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.conduit-extra)
            (hsPkgs.shakespeare)
            (hsPkgs.streaming-commons)
            (hsPkgs.wai-extra)
            (hsPkgs.mwc-random)
            (hsPkgs.cookie)
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
            (hsPkgs.transformers)
            (hsPkgs.yesod-core)
            (hsPkgs.blaze-html)
          ];
        };
      };
    };
  }