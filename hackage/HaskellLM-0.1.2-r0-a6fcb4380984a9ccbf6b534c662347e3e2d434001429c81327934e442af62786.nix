{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HaskellLM";
        version = "0.1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Kiet Lam <ktklam9@gmail.com>";
      author = "Kiet Lam";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell implementation of the Levenberg-Marquardt algorithm";
      description = "The Levenberg-Marquardt algorithm is a minimization algorithm for functions expressed as a sum of squared errors\n\nThis can be used for curve-fitting, multidimensional function minimization, and neural networks training\n\nGo to <https://github.com/ktklam9/HaskellLM> for example usage (in tests)";
      buildType = "Simple";
    };
    components = {
      "HaskellLM" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hmatrix)
        ];
      };
    };
  }