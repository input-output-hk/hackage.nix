{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "warp-tls-uid";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/warp-tls-uid#readme";
      url = "";
      synopsis = "set group and user id before running server";
      description = "Please see the README on GitHub at <https://github.com/githubuser/warp-tls-uid#readme>";
      buildType = "Simple";
    };
    components = {
      "warp-tls-uid" = {
        depends  = [
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
          depends  = [
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