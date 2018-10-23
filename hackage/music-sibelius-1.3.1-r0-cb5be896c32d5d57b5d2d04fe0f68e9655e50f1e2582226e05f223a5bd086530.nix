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
        name = "music-sibelius";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "To be written.";
      description = "Import music from Sibelius.\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
      buildType = "Simple";
    };
    components = {
      "music-sibelius" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.music-score)
          (hsPkgs.music-preludes)
          (hsPkgs.aeson)
        ];
      };
    };
  }