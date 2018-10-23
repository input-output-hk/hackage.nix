{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "connection";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-connection";
      url = "";
      synopsis = "Simple and easy network connections API";
      description = "Simple network library for all your connection need.\n\nFeatures: Really simple to use, SSL/TLS, SOCKS.\n\nThis library provides a very simple api to create sockets\nto a destination with the choice of SSL/TLS, and SOCKS.";
      buildType = "Simple";
    };
    components = {
      "connection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.network)
          (hsPkgs.tls)
          (hsPkgs.cprng-aes)
          (hsPkgs.socks)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-system)
          (hsPkgs.x509-validation)
        ];
      };
    };
  }