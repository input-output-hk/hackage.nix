{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "language-asn1";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "LICENSE";
        maintainer = "Dmitry Astapov <dastapov@gmail.com>";
        author = "Dmitry Astapov <dastapov@gmail.com>";
        homepage = "http://patch-tag.com/r/adept/language-asn1";
        url = "";
        synopsis = "Parsing of ASN1 definitions";
        description = "Language.ASN1 is a haskell library for the analysis of ASN.1 code.\nIt features an almost-complete, somewhat tested parser for large subset of\nASN.1:1997 standard";
        buildType = "Simple";
      };
      components = {
        language-asn1 = {
          depends  = (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.syb
            ]
            else [
              hsPkgs.base
            ]) ++ pkgs.lib.optional compiler.isGhc hsPkgs.base;
        };
      };
    }