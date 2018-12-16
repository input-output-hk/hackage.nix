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
        name = "ws-chans";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 David Smith";
      maintainer = "david.smith@keemail.me";
      author = "David Smith";
      homepage = "https://github.com/shmish111/ws-chans";
      url = "";
      synopsis = "Unagi chan based websocket client";
      description = "Use Control.Concurrent.Chan.Unagi as an interface to a websocket server";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.network)
          (hsPkgs.unagi-chan)
          (hsPkgs.websockets)
        ];
      };
      tests = {
        "ws-chans-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.http-types)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.test-framework)
            (hsPkgs.text)
            (hsPkgs.unagi-chan)
            (hsPkgs.wai)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.websockets)
            (hsPkgs.ws-chans)
          ];
        };
      };
    };
  }