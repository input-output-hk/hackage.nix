{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tcp-streams";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Winterland 2016";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/didi-FP/tcp-streams";
      url = "";
      synopsis = "One stop solution for tcp client and server with tls support.";
      description = "One stop solution for tcp client and server with tls support.";
      buildType = "Simple";
    };
    components = {
      "tcp-streams" = {
        depends  = [
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
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.io-streams)
            (hsPkgs.tcp-streams)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }