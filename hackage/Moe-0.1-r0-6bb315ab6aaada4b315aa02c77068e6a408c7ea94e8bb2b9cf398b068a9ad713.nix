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
        name = "Moe";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fnnirvana@gmail.com";
      author = "Xinyu Jiang";
      homepage = "";
      url = "";
      synopsis = "A FRP library based on signal functions.";
      description = "A FRP library based on signal functions.";
      buildType = "Simple";
    };
    components = {
      "Moe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random)
          (hsPkgs.GLUT)
        ];
      };
      exes = {
        "MoeExample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.GLUT)
          ];
        };
      };
    };
  }