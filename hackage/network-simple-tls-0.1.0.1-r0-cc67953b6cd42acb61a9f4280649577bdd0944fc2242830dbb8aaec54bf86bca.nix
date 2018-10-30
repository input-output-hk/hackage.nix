{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-simple-tls";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple-tls";
      url = "";
      synopsis = "Simple interface to TLS secured network sockets.";
      description = "Simple interface to TLS secured network sockets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.certificate)
          (hsPkgs.crypto-random-api)
          (hsPkgs.network)
          (hsPkgs.network-simple)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
        ];
      };
      exes = {
        "network-simple-tls-example-https-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network-simple-tls)
            (hsPkgs.network)
            (hsPkgs.tls-extra)
            (hsPkgs.tls)
            (hsPkgs.certificate)
          ];
        };
        "network-simple-tls-example-echo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network-simple-tls)
            (hsPkgs.network)
            (hsPkgs.tls-extra)
            (hsPkgs.tls)
            (hsPkgs.certificate)
          ];
        };
      };
    };
  }