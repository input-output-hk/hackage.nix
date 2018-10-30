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
        name = "pipes-network-tls";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network-tls";
      url = "";
      synopsis = "TLS-secured network connections support for pipes.";
      description = "Use TLS-secured network connections together with the @pipes@ ecosystem.\n\nThis package is organized using the following namespaces:\n\n* \"Control.Proxy.TCP.TLS\" exports 'Control.Proxy.Proxy's and functions for\nestablishing and using TLS-secured TCP connections.\n\n* \"Control.Proxy.TCP.TLS.Safe\" is similar to \"Control.Proxy.TCP.TLS\", except\nthe exported 'Control.Proxy.Proxy's themselves can obtain new TLS resources\nsafely by using the facilities providied by the @pipes-safe@ package.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.network-simple-tls)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.pipes-network)
          (hsPkgs.tls)
          (hsPkgs.transformers)
        ];
      };
    };
  }