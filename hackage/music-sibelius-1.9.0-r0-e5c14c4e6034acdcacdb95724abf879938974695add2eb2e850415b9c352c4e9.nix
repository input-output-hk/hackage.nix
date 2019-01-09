{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-sibelius"; version = "1.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund <hans@hanshoglund.se>";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Interaction with Sibelius.";
      description = "Import music from Sibelius (experimental).\n\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          (hsPkgs.monadplus)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.music-score)
          (hsPkgs.music-pitch)
          (hsPkgs.music-parts)
          (hsPkgs.music-dynamics)
          (hsPkgs.music-articulation)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-preludes)
          (hsPkgs.aeson)
          ];
        };
      };
    }