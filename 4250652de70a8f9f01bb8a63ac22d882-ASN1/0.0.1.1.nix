{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ASN1";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dominic Steinitz 2003 - 2007";
        maintainer = "dominic.steinitz@blueyonder.co.uk";
        author = "Dominic Steinitz";
        homepage = "http://www.haskell.org/asn1";
        url = "";
        synopsis = "ASN.1 support for Haskell";
        description = "Enough ASN.1 suppport for X.509\nidentity and attribute certificates, PKCS8, PKCS1v15.\nOnly the Basic Encoding Rules (BER) are supported.";
        buildType = "Simple";
      };
      components = {
        ASN1 = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.NewBinary
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.pretty
            ]
            else [ hsPkgs.base ]);
        };
      };
    }