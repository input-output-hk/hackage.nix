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
      specVersion = "1.2";
      identifier = {
        name = "lambdacube-bullet";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Csaba Hruska";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "Example for combining LambdaCube and Bullet";
      description = "Example for combining LambdaCube and Bullet";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lambdacube-bullet-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lambdacube-engine)
            (hsPkgs.elerea)
            (hsPkgs.GLFW)
            (hsPkgs.OpenGL)
            (hsPkgs.containers)
            (hsPkgs.hslogger)
            (hsPkgs.bullet)
          ];
        };
      };
    };
  }