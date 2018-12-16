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
      specVersion = "1.6";
      identifier = {
        name = "GLFW-b-demo";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW-b test\\/example\\/demo";
      description = "GLFW-b test\\/example\\/demo.\n\nRun 'GLFW-b-demo' and use a joystick or cursor keys to rotate an\nRGB cube. /Please help me think of more interesting stuff to do/\n/in here./";
      buildType = "Simple";
    };
    components = {
      exes = {
        "GLFW-b-demo" = {
          depends = [
            (hsPkgs.GLFW-b)
            (hsPkgs.OpenGL)
            (hsPkgs.base)
          ];
        };
      };
    };
  }