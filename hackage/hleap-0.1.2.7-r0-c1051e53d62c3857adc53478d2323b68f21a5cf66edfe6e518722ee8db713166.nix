{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hleap";
        version = "0.1.2.7";
      };
      license = "MIT";
      copyright = "(c) 2016 Brian W Bush";
      maintainer = "Brian W Bush <consult@brianwbush.info>";
      author = "Brian W Bush <consult@brianwbush.info>";
      homepage = "https://bitbucket.org/functionally/hleap";
      url = "https://bitbucket.org/functionally/hleap/downloads/hleap-0.1.2.7.tar.gz";
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