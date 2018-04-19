{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "x509-validation";
          version = "1.6.3";
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
        x509-validation = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.memory
            hsPkgs.byteable
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.hourglass
            hsPkgs.data-default-class
            hsPkgs.pem
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.cryptonite
          ];
        };
      };
    }