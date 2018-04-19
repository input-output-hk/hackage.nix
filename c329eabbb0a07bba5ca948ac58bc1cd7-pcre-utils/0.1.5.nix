{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pcre-utils";
          version = "0.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "";
        url = "";
        synopsis = "Perl-like substitute and split for PCRE regexps.";
        description = "This package introduces split and replace like functions using PCRE regexps.";
        buildType = "Simple";
      };
      components = {
        pcre-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-pcre-builtin
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.array
          ];
        };
        tests = {
          test-split = {
            depends  = [
              hsPkgs.base
              hsPkgs.pcre-utils
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.regex-pcre-builtin
            ];
          };
          test-subs = {
            depends  = [
              hsPkgs.base
              hsPkgs.pcre-utils
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.regex-pcre-builtin
            ];
          };
        };
      };
    }