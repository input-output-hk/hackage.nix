{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "language-asn1";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "LICENSE";
        maintainer = "Dmitry Astapov <dastapov@gmail.com>";
        author = "Dmitry Astapov <dastapov@gmail.com>";
        homepage = "http://patch-tag.com/r/adept/language-asn1";
        url = "";
        synopsis = "Parsing of ASN1 definitions";
        description = "Language C is a haskell library for the analysis and generation of C code.\nIt features a complete, well tested parser and pretty printer for all of C99 and a large\nset of GNU extensions.";
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