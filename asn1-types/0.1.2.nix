{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "asn1-types";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-asn1-types";
        url = "";
        synopsis = "ASN.1 types";
        description = "ASN.1 standard types";
        buildType = "Simple";
      };
      components = {
        asn1-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.time
          ];
        };
      };
    }