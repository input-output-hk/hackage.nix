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
        name = "music-pitch";
        version = "1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "Abstract representation of musical pitch.";
      description = "This package provides various representations of musical pitch.\n\nNote that this package is independent of @music-score@ and vice versa.\nThis is a deliberate design choice: the user should be free to combine any\npitch representation with any time structure. Normally you will include\nboth packages through @music-preludes@.\n\nThis library is part of the Music Suite, see\n<http://music-suite.github.io>.";
      buildType = "Simple";
    };
    components = {
      "music-pitch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.music-pitch-literal)
          (hsPkgs.vector-space)
        ];
      };
    };
  }