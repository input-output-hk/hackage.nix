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
        name = "LambdaINet";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul H. Liu <paul@thev.net>";
      author = "";
      homepage = "not available";
      url = "";
      synopsis = "Graphical Interaction Net Evaluator for Optimal Evaluation";
      description = "An experimental evaluator for Interaction Nets that encodes\noptimal and call-by-need strategies based on Lambdascope, with\nan interactive graphical interface based on OpenGL and GLFW.\nSee the README in source for more information.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "LambdaINet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.monad-task)
            (hsPkgs.GLFW-task)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }