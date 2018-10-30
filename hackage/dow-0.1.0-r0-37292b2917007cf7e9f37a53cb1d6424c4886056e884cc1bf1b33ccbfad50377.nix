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
        name = "dow";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Dungeons of Wor";
      description = "Dungeons of Wor is a homage to the classic arcade game, Wizard of\nWor.  It uses the artwork and levels from the Astrocade version, but\nthe gameplay mechanics differ from the original in several ways.\n\nThis game is also an experiment in functional reactive programming,\nso it might be a useful resource to anyone interested in this topic.\nIt was coded using the simple version of Elerea, which provides\ndiscrete streams as first-class values.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dow" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.elerea)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }