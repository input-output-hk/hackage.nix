{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Hieroglyph"; version = "3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "J.R. Heard";
      author = "J.R. Heard";
      homepage = "http://vis.renci.org/jeff/hieroglyph";
      url = "";
      synopsis = "Purely functional 2D graphics for visualization.";
      description = "A purely functional 2D scenegraph library with functionality similar to a barebones Processing.\nCurrently a complete implmentation exists using Cairo and partial implementation in OpenGL as well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.IfElse)
          (hsPkgs.OpenGL)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.buster)
          (hsPkgs.bytestring)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.gtk)
          (hsPkgs.gtkglext)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pretty)
          (hsPkgs.random)
          (hsPkgs.glib)
          (hsPkgs.buster-gtk)
          ];
        };
      };
    }