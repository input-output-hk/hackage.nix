{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-logger";
          version = "2.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "A logging system for WAI";
        description = "A logging system for WAI";
        buildType = "Simple";
      };
      components = {
        wai-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.auto-update
            hsPkgs.blaze-builder
            hsPkgs.byteorder
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.easy-file
            hsPkgs.fast-logger
            hsPkgs.http-types
            hsPkgs.network
            hsPkgs.wai
          ] ++ (if system.isWindows
            then [
              hsPkgs.time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.unix
              hsPkgs.unix-time
            ]);
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }