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
        name = "warp-tls-uid";
        version = "0.2.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Yoshikuni Jujo";
      maintainer = "PAF01143[at]nifty.ne.jp";
      author = "Yoshikuni Jujo";
      homepage = "https://github.com/YoshikuniJujo/warp-tls-uid#readme";
      url = "";
      synopsis = "set group and user id before running server";
      description = "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.streaming-commons)
          (hsPkgs.unix)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
        ];
      };
      tests = {
        "warp-tls-uid-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.streaming-commons)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.warp-tls-uid)
          ];
        };
      };
    };
  }