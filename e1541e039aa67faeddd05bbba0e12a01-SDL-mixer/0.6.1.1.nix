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
      specVersion = "1.6";
      identifier = {
        name = "SDL-mixer";
        version = "0.6.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "2004-2010, Lemmih";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL_mixer";
      description = "SDL_mixer is a sample multi-channel audio mixer library.\nIt supports any number of simultaneously playing channels\nof 16 bit stereo audio, plus a single channel of music,\nmixed by the popular MikMod MOD, Timidity MIDI, Ogg Vorbis,\nand SMPEG MP3 libraries.";
      buildType = "Custom";
    };
    components = {
      "SDL-mixer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.SDL)
        ];
      };
    };
  }