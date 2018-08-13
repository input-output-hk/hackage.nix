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
        name = "openssl-streams";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Collins <greg@gregorycollins.net>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "OpenSSL network support for io-streams.";
      description = "The openssl-streams library contains io-streams routines for secure\nnetworking using OpenSSL (by way of HsOpenSSL).";
      buildType = "Simple";
    };
    components = {
      "openssl-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.io-streams)
          (hsPkgs.network)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.io-streams)
            (hsPkgs.network)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }