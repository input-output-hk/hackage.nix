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
        name = "bindings-audiofile";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-AudioFile.html";
      url = "";
      synopsis = "Low level bindings to audiofile";
      description = "Bindings to audiofile: <http://www.68k.org/~michael/audiofile/>";
      buildType = "Simple";
    };
    components = {
      "bindings-audiofile" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        pkgconfig = [
          (pkgconfPkgs.audiofile)
        ];
      };
    };
  }