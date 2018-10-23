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
        name = "dynamic-graph";
        version = "0.1.0.12";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/dynamic-graph";
      url = "";
      synopsis = "Draw and update graphs in real time with OpenGL";
      description = "Draw and update graphs in real time with OpenGL. Suitable for displaying large amounts of frequently changing data. Line graphs and waterfall plots are supported, as well as axis drawing.\n\nSee <https://github.com/adamwalker/dynamic-graph> for examples of the graphs it can produce.\n\nTo get started, see \"Graphics.DynamicGraph.Window\"";
      buildType = "Simple";
    };
    components = {
      "dynamic-graph" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.GLFW-b)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUtil)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.pango)
          (hsPkgs.cairo)
          (hsPkgs.colour)
        ];
      };
    };
  }