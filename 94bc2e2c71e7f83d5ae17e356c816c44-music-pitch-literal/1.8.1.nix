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
        name = "music-pitch-literal";
        version = "1.8.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Overloaded pitch literals.";
      description = "This package allow you to write the pitches of standard notation as expressions\noverloaded on result type. This works exactly like numeric literals.\nThis library is part of the Music Suite, see <http://music-suite.github.io>.";
      buildType = "Simple";
    };
    components = {
      "music-pitch-literal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
        ];
      };
    };
  }