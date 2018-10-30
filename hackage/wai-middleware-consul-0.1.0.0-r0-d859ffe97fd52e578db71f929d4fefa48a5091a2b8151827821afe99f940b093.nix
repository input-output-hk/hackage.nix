{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-consul";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "dev@fpcomplete.com";
      author = "FP Complete Developers";
      homepage = "https://github.com/fpco/wai-middleware-consul";
      url = "";
      synopsis = "Wai Middleware for Consul";
      description = "Proxies data to/from Consul. Watches for updates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.consul-haskell)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.void)
          (hsPkgs.wai)
          (hsPkgs.wai-conduit)
        ];
      };
      exes = {
        "wai-middleware-consul-example" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-prelude)
            (hsPkgs.monad-logger)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-app-static)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-consul)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }