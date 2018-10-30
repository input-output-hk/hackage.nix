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
        name = "music-diatonic";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Patrick LeBoutillier <patl@cpan.org>,\nAlan Hawkins <w@xy30.com>";
      author = "Patrick LeBoutillier";
      homepage = "";
      url = "";
      synopsis = "Implementation of basic western musical theory objects.";
      description = "music-diatonic provides an implementation of basic western musical theory objects.\nIncludes notes, scales, chords, degrees and harmonies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }