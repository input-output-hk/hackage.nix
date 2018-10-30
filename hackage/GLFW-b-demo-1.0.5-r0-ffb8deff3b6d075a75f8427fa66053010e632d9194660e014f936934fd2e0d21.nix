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
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "GLFW-b demo";
      description = "This is a demonstration of GLFW-b\n(<http://hackage.haskell.org/package/GLFW-b>) allowing the user to interact\nwith colorful spinning gears using cursor keys, mouse, scroll wheel, and\njoystick.\n\nHere's a screenshot: <http://i.imgur.com/JZKwVSu.png>";
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