{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fast-logger";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "A fast logging system";
        description = "A fast logging system";
        buildType = "Simple";
      };
      components = {
        fast-logger = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.text
          ] ++ (if system.isWindows
            then [
              hsPkgs.old-locale
              hsPkgs.time
            ]
            else [
              hsPkgs.unix
              hsPkgs.unix-time
            ]);
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.fast-logger
              hsPkgs.hspec
            ];
          };
        };
      };
    }