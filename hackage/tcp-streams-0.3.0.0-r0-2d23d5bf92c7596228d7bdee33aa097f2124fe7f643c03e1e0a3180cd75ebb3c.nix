{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { openssl = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tcp-streams";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "";
      url = "";
      synopsis = "One stop solution for tcp client and server with tls support.";
      description = "One stop solution for tcp client and server with tls support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.tls)
          (hsPkgs.data-default-class)
          (hsPkgs.x509)
          (hsPkgs.x509-system)
          (hsPkgs.x509-store)
          (hsPkgs.pem)
        ] ++ pkgs.lib.optionals (flags.openssl) [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.HsOpenSSL-x509-system)
        ];
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.io-streams)
            (hsPkgs.tcp-streams)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }