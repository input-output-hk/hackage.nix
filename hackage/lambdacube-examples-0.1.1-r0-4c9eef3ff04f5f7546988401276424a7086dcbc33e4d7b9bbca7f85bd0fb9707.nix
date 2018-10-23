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
        name = "lambdacube-examples";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Csaba Hruska";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "Examples for LambdaCube";
      description = "Examples for LambdaCube";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdacube-basic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambdacube-engine)
            (hsPkgs.elerea)
            (hsPkgs.GLFW)
            (hsPkgs.OpenGL)
            (hsPkgs.containers)
            (hsPkgs.hslogger)
          ];
        };
        "lambdacube-cameratrack" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambdacube-engine)
            (hsPkgs.elerea)
            (hsPkgs.GLFW)
            (hsPkgs.OpenGL)
            (hsPkgs.containers)
            (hsPkgs.hslogger)
          ];
        };
      };
    };
  }