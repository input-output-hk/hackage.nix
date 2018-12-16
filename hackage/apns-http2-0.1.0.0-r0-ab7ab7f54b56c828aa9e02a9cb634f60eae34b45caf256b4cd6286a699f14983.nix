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
        name = "apns-http2";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc.";
      homepage = "https://github.com/ConferHealth/apns-http2#readme";
      url = "";
      synopsis = "Apple Push Notification service HTTP/2 integration.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.http2)
          (hsPkgs.keys)
          (hsPkgs.lens)
          (hsPkgs.lifted-base)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.stm-conduit)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
        ];
      };
      exes = {
        "apns-http2-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.http2)
            (hsPkgs.keys)
            (hsPkgs.lens)
            (hsPkgs.lifted-base)
            (hsPkgs.mmorph)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.stm)
            (hsPkgs.stm-chans)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-validation)
            (hsPkgs.aeson-qq)
            (hsPkgs.apns-http2)
            (hsPkgs.base16-bytestring)
            (hsPkgs.x509-system)
          ];
        };
      };
    };
  }