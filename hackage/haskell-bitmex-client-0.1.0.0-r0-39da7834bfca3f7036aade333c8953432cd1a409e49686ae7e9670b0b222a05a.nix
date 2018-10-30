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
        name = "haskell-bitmex-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan.lucsanszky@gmail.com";
      author = "Lucsanszky";
      homepage = "";
      url = "";
      synopsis = "Complete BitMEX Client";
      description = "A complete BitMEX client library including the WebSocket API and a wrapper around the auto-generated REST API (haskell-bitmex-rest).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-conversion)
          (hsPkgs.cryptonite)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.katip)
          (hsPkgs.microlens)
          (hsPkgs.memory)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.haskell-bitmex-rest)
          (hsPkgs.safe-exceptions)
          (hsPkgs.network)
          (hsPkgs.vector)
          (hsPkgs.websockets)
          (hsPkgs.wuss)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.haskell-bitmex-rest)
            (hsPkgs.haskell-bitmex-client)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.katip)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }