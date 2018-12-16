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
      specVersion = "1.2";
      identifier = {
        name = "pulse-simple";
        version = "0.1.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "";
      url = "";
      synopsis = "binding to Simple API of pulseaudio";
      description = "Binding to simple version of client API for the pulseaudio soundserver.\nAlthough it does not provide advanced features and some not-so-adavanced features like\nvolume control, it should be enough for simple applications.\nTested only on 64-bit linux with ghc-6.10.3.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."pulse-simple")
        ];
      };
    };
  }