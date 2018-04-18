{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "asn1-parse";
          version = "0.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-asn1";
        url = "";
        synopsis = "Simple monadic parser for ASN1 stream types.";
        description = "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.";
        buildType = "Simple";
      };
      components = {
        asn1-parse = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
          ];
        };
      };
    }