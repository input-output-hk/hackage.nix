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
        name = "instrument-chord";
        version = "0.1.0.6";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "w@xy30.com";
      author = "Alan Hawkins";
      homepage = "https://github.com/xpika/chord";
      url = "";
      synopsis = "Render Instrument Chords";
      description = "Library to generate descriptions of musical instrument manipluations";
      buildType = "Simple";
    };
    components = {
      "instrument-chord" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.music-diatonic)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }