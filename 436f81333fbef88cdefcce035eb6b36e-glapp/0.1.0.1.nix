{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "glapp";
        version = "0.1.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "zyghost.com";
      url = "";
      synopsis = "An OpenGL micro framework.";
      description = "Attempts to make managing multiple windows and window data\neasier.";
      buildType = "Simple";
    };
    components = {
      "glapp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.GLFW-b)
          (hsPkgs.OpenGL)
          (hsPkgs.mtl)
          (hsPkgs.lens)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.lens)
            (hsPkgs.GLFW-b)
            (hsPkgs.mtl)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }