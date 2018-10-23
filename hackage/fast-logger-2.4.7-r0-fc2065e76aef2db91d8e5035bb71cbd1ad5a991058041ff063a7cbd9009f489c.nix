{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fast-logger";
        version = "2.4.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "https://github.com/kazu-yamamoto/logger";
      url = "";
      synopsis = "A fast logging system";
      description = "A fast logging system";
      buildType = "Simple";
    };
    components = {
      "fast-logger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.auto-update)
          (hsPkgs.easy-file)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.time)
            (hsPkgs.Win32)
            (hsPkgs.old-locale)
          ]
          else [
            (hsPkgs.unix)
            (hsPkgs.unix-time)
          ]);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }