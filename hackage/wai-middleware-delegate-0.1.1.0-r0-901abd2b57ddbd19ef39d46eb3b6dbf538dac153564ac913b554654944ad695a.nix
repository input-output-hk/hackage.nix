{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "wai-middleware-delegate";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim.emiola@gmail.com";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/wai-middleware-delegate";
      url = "";
      synopsis = "WAI middleware that delegates handling of requests.";
      description = "WAI middleware to intercept requests that match a predicate and\nrespond to them using other WAI Applications or proxied hosts. [WAI]\n<http://hackage.haskell.org/package/wai>";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-delegate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.data-default)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.streaming-commons)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.wai-conduit)
        ];
      };
      tests = {
        "integration-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.connection)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.wai-conduit)
            (hsPkgs.wai-middleware-delegate)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
          ];
        };
      };
    };
  }