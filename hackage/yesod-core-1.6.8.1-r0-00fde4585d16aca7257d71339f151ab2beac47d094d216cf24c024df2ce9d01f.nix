{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yesod-core"; version = "1.6.8.1"; };
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.auto-update)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cookie)
          (hsPkgs.deepseq)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.path-pieces)
          (hsPkgs.primitive)
          (hsPkgs.random)
          (hsPkgs.resourcet)
          (hsPkgs.rio)
          (hsPkgs.shakespeare)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-logger)
          (hsPkgs.warp)
          (hsPkgs.word8)
          ];
        };
      tests = {
        "test-routes" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.clientsession)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cookie)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.shakespeare)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.yesod-core)
            ];
          };
        };
      benchmarks = {
        "widgets" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.gauge)
            (hsPkgs.shakespeare)
            (hsPkgs.text)
            ];
          };
        };
      };
    }