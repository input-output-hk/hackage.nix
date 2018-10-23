{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "req-conduit";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>, Michael Snoyman <michael@snoyman.com>";
      homepage = "https://github.com/mrkkrp/req-conduit";
      url = "";
      synopsis = "Conduit helpers for the req HTTP client library";
      description = "Conduit helpers for the req HTTP client library.";
      buildType = "Simple";
    };
    components = {
      "req-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-client)
          (hsPkgs.req)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "httpbin-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.hspec)
            (hsPkgs.req)
            (hsPkgs.req-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "weigh-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.req)
            (hsPkgs.req-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.temporary)
            (hsPkgs.weigh)
          ];
        };
      };
    };
  }