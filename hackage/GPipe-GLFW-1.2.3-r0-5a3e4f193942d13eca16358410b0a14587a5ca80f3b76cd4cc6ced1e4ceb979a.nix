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
        name = "GPipe-GLFW";
        version = "1.2.3";
      };
      license = "MIT";
      copyright = "Patrick Redmond";
      maintainer = "Patrick Redmond";
      author = "Patrick Redmond";
      homepage = "https://github.com/plredmond/GPipe-GLFW";
      url = "";
      synopsis = "GLFW OpenGL context creation for GPipe";
      description = "GPipe-GLFW is a utility library to enable the use of GLFW as\nthe OpenGL window and context handler for GPipe. GPipe is a\ntypesafe functional API based on the conceptual model of\nOpenGL, but without the imperative state machine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.GLFW-b)
          (hsPkgs.GPipe)
        ];
      };
      exes = {
        "gpipe-glfw-smoketests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GPipe)
            (hsPkgs.GPipe-GLFW)
            (hsPkgs.transformers)
            (hsPkgs.exception-transformers)
          ];
        };
      };
    };
  }