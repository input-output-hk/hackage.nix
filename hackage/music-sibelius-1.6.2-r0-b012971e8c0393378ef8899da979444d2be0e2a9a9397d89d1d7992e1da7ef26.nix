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
      specVersion = "1.10";
      identifier = {
        name = "music-sibelius";
        version = "1.6.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "To be written.";
      description = "Import music from Sibelius (experimental).\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.lens)
          (hsPkgs.monadplus)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-preludes)
          (hsPkgs.aeson)
        ];
      };
    };
  }