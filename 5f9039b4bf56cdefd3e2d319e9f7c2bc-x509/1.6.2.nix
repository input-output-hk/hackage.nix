{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "x509";
          version = "1.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-certificate";
        url = "";
        synopsis = "X509 reader and writer";
        description = "X509 reader and writer";
        buildType = "Simple";
      };
      components = {
        "x509" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.memory
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.hourglass
            hsPkgs.pem
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
            hsPkgs.asn1-parse
            hsPkgs.cryptonite
          ];
        };
        tests = {
          "test-x509" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.hourglass
              hsPkgs.asn1-types
              hsPkgs.x509
              hsPkgs.cryptonite
            ];
          };
        };
      };
    }