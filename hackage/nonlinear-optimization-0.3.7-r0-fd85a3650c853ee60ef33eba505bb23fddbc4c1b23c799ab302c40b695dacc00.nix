{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nonlinear-optimization";
        version = "0.3.7";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010-2011 Felipe A. Lessa and William W. Hager";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa (Haskell code),\nWilliam W. Hager and Hongchao Zhang (CM_DESCENT code).";
      homepage = "";
      url = "";
      synopsis = "Various iterative algorithms for optimization of nonlinear functions.";
      description = "This library implements numerical algorithms to optimize\nnonlinear functions.  Optimization means that we try to find\na minimum of the function.  Currently all algorithms\nguarantee only that local minima will be found, not global\nones.\n\nAlmost any continuosly differentiable function @f : R^n -> R@\nmay be optimized by this library.  Any further restrictions\nare listed in the modules that need them.\n\nWe use the @vector@ package to represent vectors and\nmatrices, although it would be possible to use something like\n@hmatrix@ easily.\n\nCurrently only CG_DESCENT method is implemented.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs."m") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }