{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "http-date";
          version = "0.0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "HTTP Date parser/formatter";
        description = "Fast parser and formatter for HTTP Date";
        buildType = "Simple";
      };
      components = {
        http-date = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.bytestring
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.http-date
              hsPkgs.old-locale
              hsPkgs.time
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }