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
        name = "pkcs10";
        version = "0.1.1.0";
      };
      license = "Apache-2.0";
      copyright = "Timothy Klim <hackage@timothyklim.com>";
      maintainer = "Timothy Klim <hackage@timothyklim.com>";
      author = "Timothy Klim <hackage@timothyklim.com>";
      homepage = "https://github.com/fcomb/pkcs10-hs#readme";
      url = "";
      synopsis = "PKCS#10 library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "pkcs10" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.x509)
          (hsPkgs.cryptonite)
          (hsPkgs.pem)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.asn1-parse)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pkcs10)
            (hsPkgs.transformers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.pem)
            (hsPkgs.x509)
            (hsPkgs.asn1-types)
            (hsPkgs.asn1-encoding)
            (hsPkgs.asn1-parse)
          ];
        };
      };
    };
  }