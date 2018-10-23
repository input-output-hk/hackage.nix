{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "music-pitch-literal";
        version = "1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Overloaded pitch literals.";
      description = "This package allow you to write the pitches of standard notation as expressions\noverloaded on result type. This works exactly like numeric literals.\nThis library is part of the Music Suite, see <http://musicsuite.github.com>.";
      buildType = "Simple";
    };
    components = {
      "music-pitch-literal" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }