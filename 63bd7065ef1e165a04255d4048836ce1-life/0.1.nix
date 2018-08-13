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
      specVersion = "1.6";
      identifier = {
        name = "life";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Chuck Adams";
      maintainer = "Chuck Adams <cja987@gmail.com>";
      author = "Chuck Adams";
      homepage = "http://github.com/sproingie/haskell-cells/";
      url = "";
      synopsis = "Conway's Life cellular automaton";
      description = "Conway's life as an OpenGL example. Special thanks to\nWill Donnelly for his pure-functional Brians Brain code\nthat got this started (cabal unpack brians-brain).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "life" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLUT)
            (hsPkgs.random)
            (hsPkgs.array)
          ];
        };
      };
    };
  }