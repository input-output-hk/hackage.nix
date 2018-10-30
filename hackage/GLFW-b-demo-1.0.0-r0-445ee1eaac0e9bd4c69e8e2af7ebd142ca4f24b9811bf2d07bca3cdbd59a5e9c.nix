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
      specVersion = "1.10";
      identifier = {
        name = "GLFW-b-demo";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW-b demo";
      description = "This is a demonstration of <http://hackage.haskell.org/package/GLFW-b GLFW-b>\nallowing the user to interact with colorful spinning gears using cursor keys,\nmouse, scroll wheel, and joystick.\n\nHere's a <http://i.imgur.com/JZKwVSu.png screenshot>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "GLFW-b-demo" = {
          depends  = [
            (hsPkgs.GLFW-b)
            (hsPkgs.OpenGL)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.stm)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }