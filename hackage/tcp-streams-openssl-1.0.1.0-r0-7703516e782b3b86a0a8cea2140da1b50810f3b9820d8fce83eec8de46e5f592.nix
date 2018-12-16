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
        name = "tcp-streams-openssl";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Winterland 2016";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/didi-FP/tcp-streams";
      url = "";
      synopsis = "Tcp streams using openssl for tls support.";
      description = "Tcp streams using openssl for tls support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.tcp-streams)
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
            (hsPkgs.tcp-streams-openssl)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }