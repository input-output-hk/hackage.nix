{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "http-reverse-proxy";
        version = "0.4.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/http-reverse-proxy";
      url = "";
      synopsis = "Reverse proxy HTTP requests, either over raw sockets or with WAI";
      description = "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.";
      buildType = "Simple";
    };
    components = {
      "http-reverse-proxy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.word8)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-client)
          (hsPkgs.wai)
          (hsPkgs.network)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.data-default-class)
          (hsPkgs.wai-logger)
          (hsPkgs.resourcet)
          (hsPkgs.containers)
          (hsPkgs.async)
          (hsPkgs.transformers)
          (hsPkgs.streaming-commons)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-reverse-proxy)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.warp)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.blaze-builder)
            (hsPkgs.transformers)
            (hsPkgs.lifted-base)
            (hsPkgs.network)
            (hsPkgs.http-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.streaming-commons)
          ];
        };
      };
    };
  }