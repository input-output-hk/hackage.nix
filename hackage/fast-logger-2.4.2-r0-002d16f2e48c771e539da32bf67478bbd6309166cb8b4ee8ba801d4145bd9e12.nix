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
        name = "fast-logger";
        version = "2.4.2";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.auto-update)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
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