{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "language-asn1";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "LICENSE";
        maintainer = "Dmitry Astapov <dastapov@gmail.com>";
        author = "Dmitry Astapov <dastapov@gmail.com>";
        homepage = "http://patch-tag.com/r/adept/language-asn1";
        url = "";
        synopsis = "Parsing of ASN1 definitions";
        description = "Language.ASN1 is a haskell library for the analysis of ASN.1 code.\nIt features an almost-complete, somewhat tested parser for large subset of\nX.680-0207 -- X.683-0207 standards";
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
        exes = {
          LanguageASN1Testsuite = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.parsec
              hsPkgs.syb
            ];
          };
          TestASN1Parser = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.syb
            ];
          };
        };
      };
    }