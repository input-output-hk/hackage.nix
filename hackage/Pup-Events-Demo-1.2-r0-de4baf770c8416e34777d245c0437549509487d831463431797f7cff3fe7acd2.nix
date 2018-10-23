{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.2.0";
      identifier = {
        name = "Pup-Events-Demo";
        version = "1.2";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2012 Daniel Wilson";
      maintainer = "wilsonhardrock@gmail.com";
      author = "Daniel Wilson";
      homepage = "";
      url = "";
      synopsis = "A networked event handling framework for hooking\ninto other programs.";
      description = "Pup-Events is a networking enabled event handling\nframework. This package contains a demonstration of\nhow this library is expected to be used.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Pup-Events-Server)
            (hsPkgs.parsec)
          ];
        };
        "demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Pup-Events-Client)
            (hsPkgs.stm)
            (hsPkgs.OpenGL)
            (hsPkgs.Pup-Events-PQueue)
            (hsPkgs.parsec)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }