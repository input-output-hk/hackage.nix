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
      specVersion = "1.2";
      identifier = {
        name = "pulse-simple";
        version = "0.1.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "";
      url = "";
      synopsis = "binding to Simple API of pulseaudio";
      description = "Binding to simple version of client API for the pulseaudio soundserver.\nAlthough it does not provide advanced features and some not-so-adavanced features like\nvolume control, it should be enough for simple applications.\nConfirmed to work on linux(both 32 bit and 64 bit) with ghc 6.8 or 6.10.";
      buildType = "Simple";
    };
    components = {
      "pulse-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."pulse-simple")
        ];
      };
    };
  }