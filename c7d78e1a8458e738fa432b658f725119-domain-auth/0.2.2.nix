{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "domain-auth";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Domain authentication library";
        description = "Library for Sender Policy Framework, SenderID,\nDomainKeys and DKIM.";
        buildType = "Simple";
      };
      components = {
        domain-auth = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.asn1-encoding
            hsPkgs.asn1-types
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.dns
            hsPkgs.iproute
            hsPkgs.memory
            hsPkgs.network
            hsPkgs.x509
            hsPkgs.word8
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.pretty-simple
            ];
          };
        };
      };
    }