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
        name = "music-score";
        version = "1.8";
      };
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
      "music-score" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.void)
          (hsPkgs.nats)
          (hsPkgs.data-default)
          (hsPkgs.average)
          (hsPkgs.semigroups)
          (hsPkgs.contravariant)
          (hsPkgs.comonad)
          (hsPkgs.bifunctors)
          (hsPkgs.profunctors)
          (hsPkgs.distributive)
          (hsPkgs.adjunctions)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.mtl)
          (hsPkgs.monadplus)
          (hsPkgs.NumInstances)
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