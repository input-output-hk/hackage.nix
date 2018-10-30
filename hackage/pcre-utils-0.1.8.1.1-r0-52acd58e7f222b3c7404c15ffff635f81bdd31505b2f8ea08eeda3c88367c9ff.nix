{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "pcre-utils";
        version = "0.1.8.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/pcre-utils";
      url = "";
      synopsis = "Perl-like substitute and split for PCRE regexps.";
      description = "This package introduces split and replace like functions using PCRE regexps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          (hsPkgs.array)
        ];
      };
      tests = {
        "test-split" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pcre-utils)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.regex-pcre-builtin)
          ];
        };
        "test-subs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pcre-utils)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.regex-pcre-builtin)
          ];
        };
      };
    };
  }