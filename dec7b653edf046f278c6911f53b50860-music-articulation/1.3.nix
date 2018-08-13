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
      specVersion = "1.2";
      identifier = {
        name = "music-articulation";
        version = "1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Abstract representation of musical articulation.";
      description = "Abstract representation of musical articulation (staccato, legato etc).\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
      buildType = "Simple";
    };
    components = {
      "music-articulation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
        ];
      };
    };
  }