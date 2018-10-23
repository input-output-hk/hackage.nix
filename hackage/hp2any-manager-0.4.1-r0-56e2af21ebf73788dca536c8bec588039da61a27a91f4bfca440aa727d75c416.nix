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
        name = "hp2any-manager";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "A utility to visialise and compare heap profiles.";
      description = "This is a program that can display several heap profiles at the same\ntime in the style of a tiling window manager.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hp2any-manager" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.glib)
            (hsPkgs.gtk)
            (hsPkgs.gtkglext)
            (hsPkgs.glade)
            (hsPkgs.cairo)
            (hsPkgs.OpenGL)
            (hsPkgs.bytestring)
            (hsPkgs.hp2any-core)
            (hsPkgs.hp2any-graph)
          ];
        };
      };
    };
  }