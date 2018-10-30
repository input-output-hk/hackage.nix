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
        name = "sarasvati";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 tune";
      maintainer = "tune";
      author = "tune";
      homepage = "https://github.com/tokiwoousaka/Sarasvati";
      url = "";
      synopsis = "audio library.";
      description = "an audio library with portaudio.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.portaudio)
          (hsPkgs.deepseq)
        ];
      };
    };
  }