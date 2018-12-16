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
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-hmac-client";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "WAI HMAC Authentication Middleware Client";
      description = "Ready to use client module for\n<<https://hackage.haskell.org/package/wai-middleware-hmac wai-middleware-hmac>>.\n\nSince no formal specification for HMAC authentication exists, this\nmodule is specifically built for\n<<https://hackage.haskell.org/package/wai-middleware-hmac wai-middleware-hmac>>.\nThis module is built on @http-client@ but is\nin the @Network.Wai@ namespace since the protocol is mostly specific\nto the middleware.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.base64-bytestring)
          (hsPkgs.word8)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.byteable)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.http-client)
            (hsPkgs.wai-middleware-hmac-client)
          ];
        };
      };
    };
  }