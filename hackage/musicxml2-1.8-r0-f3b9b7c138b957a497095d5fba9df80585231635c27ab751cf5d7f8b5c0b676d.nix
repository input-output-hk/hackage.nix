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
        name = "musicxml2";
        version = "1.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A representation of the MusicXML format.";
      description = "A representation of the MusicXML format.";
      buildType = "Simple";
    };
    components = {
      "musicxml2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.nats)
          (hsPkgs.data-default)
          (hsPkgs.type-unary)
          (hsPkgs.reverse-apply)
          (hsPkgs.xml)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-dynamics-literal)
        ];
      };
    };
  }