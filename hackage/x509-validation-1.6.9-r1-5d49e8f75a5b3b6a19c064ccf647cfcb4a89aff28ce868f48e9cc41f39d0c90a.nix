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
        name = "x509-validation";
        version = "1.6.9";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-certificate";
      url = "";
      synopsis = "X.509 Certificate and CRL validation";
      description = "X.509 Certificate and CRL validation";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.memory)
          (hsPkgs.byteable)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.hourglass)
          (hsPkgs.data-default-class)
          (hsPkgs.pem)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.cryptonite)
        ];
      };
      tests = {
        "test-x509-validation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.hourglass)
            (hsPkgs.asn1-types)
            (hsPkgs.asn1-encoding)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            (hsPkgs.x509-validation)
            (hsPkgs.cryptonite)
          ];
        };
      };
    };
  }