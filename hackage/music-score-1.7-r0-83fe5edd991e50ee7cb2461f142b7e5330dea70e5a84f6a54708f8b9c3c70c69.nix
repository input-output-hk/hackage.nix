{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "music-score"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Musical score and part representation.";
      description = "Musical time struture, voices, tracks and scores.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.process)
          (hsPkgs.data-default)
          (hsPkgs.containers)
          (hsPkgs.comonad)
          (hsPkgs.profunctors)
          (hsPkgs.transformers)
          (hsPkgs.distributive)
          (hsPkgs.adjunctions)
          (hsPkgs.NumInstances)
          (hsPkgs.monadplus)
          (hsPkgs.void)
          (hsPkgs.semigroups)
          (hsPkgs.contravariant)
          (hsPkgs.nats)
          (hsPkgs.semigroupoids)
          (hsPkgs.colour)
          (hsPkgs.HCodecs)
          (hsPkgs.vector-space)
          (hsPkgs.vector-space-points)
          (hsPkgs.musicxml2)
          (hsPkgs.lilypond)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.music-dynamics-literal)
          (hsPkgs.prettify)
          (hsPkgs.parsec)
          ];
        };
      };
    }