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
        name = "hleap";
        version = "0.1.2.6";
      };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "b.w.bush@acm.org";
      author = "Brian W Bush";
      homepage = "https://bitbucket.org/bwbush/hleap";
      url = "https://bitbucket.org/bwbush/hleap/downloads/hleap-0.1.2.6.tar.gz";
      synopsis = "Web Socket interface to Leap Motion controller";
      description = "This Haskell package contains functions for interfacing with Leap Motion controllers, \\<<https://www.leapmotion.com/product/desktop>\\>.  It is based on the WebSocket API \\<<https://developer.leapmotion.com/documentation/javascript/supplements/Leap_JSON.html>\\> and inspired by \\<<https://bitbucket.org/turion/jedinight/>\\>.";
      buildType = "Simple";
    };
    components = {
      "hleap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.websockets)
        ];
      };
      exes = {
        "leap-tracker" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }