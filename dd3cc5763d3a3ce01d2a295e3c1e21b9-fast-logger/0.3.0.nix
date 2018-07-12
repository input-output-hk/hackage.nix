{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fast-logger";
          version = "0.3.0";
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
        "fast-logger" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.date-cache
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
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.fast-logger
              hsPkgs.hspec
            ];
          };
        };
      };
    }