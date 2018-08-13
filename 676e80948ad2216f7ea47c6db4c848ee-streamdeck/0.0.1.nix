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
        name = "streamdeck";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tina@wuest.me";
      author = "Tina Wuest";
      homepage = "https://github.com/wuest/haskell-streamdeck";
      url = "";
      synopsis = "Control library for the Elgato Stream Deck";
      description = "";
      buildType = "Simple";
    };
    components = {
      "streamdeck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hidapi)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
      };
    };
  }