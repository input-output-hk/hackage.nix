{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "x509-store";
        version = "1.6.5";
      };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-certificate";
      url = "";
      synopsis = "X.509 collection accessing and storing methods";
      description = "X.509 collection accessing and storing methods for certificate, crl, exception list";
      buildType = "Simple";
    };
    components = {
      "x509-store" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.pem)
          (hsPkgs.asn1-types)
          (hsPkgs.asn1-encoding)
          (hsPkgs.cryptonite)
          (hsPkgs.x509)
        ];
      };
      tests = {
        "test-x509-store" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
          ];
        };
      };
    };
  }