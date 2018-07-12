{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unix-time";
          version = "0.3.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Unix time parser/formatter and utilities";
        description = "Fast parser\\/formatter\\/utilities for Unix time";
        buildType = "Configure";
      };
      components = {
        "unix-time" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.old-time
            hsPkgs.binary
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.QuickCheck
              hsPkgs.time
              hsPkgs.unix-time
            ];
          };
        };
      };
    }