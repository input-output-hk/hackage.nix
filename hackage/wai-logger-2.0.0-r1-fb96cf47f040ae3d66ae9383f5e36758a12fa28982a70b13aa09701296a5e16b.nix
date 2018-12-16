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
      specVersion = "1.10";
      identifier = {
        name = "wai-logger";
        version = "2.0.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.byteorder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.fast-logger)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.wai)
        ] ++ pkgs.lib.optionals (!system.isWindows) [
          (hsPkgs.unix)
          (hsPkgs.unix-time)
        ];
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.wai-test)
          ];
        };
      };
    };
  }