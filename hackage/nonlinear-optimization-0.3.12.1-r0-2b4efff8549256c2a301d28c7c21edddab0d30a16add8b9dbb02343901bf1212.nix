{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "nonlinear-optimization"; version = "0.3.12.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010-2011 Felipe A. Lessa and William W. Hager";
      maintainer = "Felipe A. Lessa <felipe.lessa@gmail.com>";
      author = "Felipe A. Lessa (Haskell code), William W. Hager and Hongchao Zhang (CM_DESCENT code).";
      homepage = "https://github.com/meteficha/nonlinear-optimization";
      url = "";
      synopsis = "Various iterative algorithms for optimization of nonlinear functions.";
      description = "This library implements numerical algorithms to optimize\nnonlinear functions.  Optimization means that we try to find\na minimum of the function.  Currently all algorithms\nguarantee only that local minima will be found, not global\nones.\n\nAlmost any continuosly differentiable function @f : R^n -> R@\nmay be optimized by this library.  Any further restrictions\nare listed in the modules that need them.\n\nWe use the @vector@ package to represent vectors and\nmatrices, although it would be possible to use something like\n@hmatrix@ easily.\n\nCurrently only CG_DESCENT method is implemented.\n\nIf you want to use automatic differentiation to avoid hand-writing gradient functions,\nyou can use\n<https://hackage.haskell.org/package/nonlinear-optimization-ad nonlinear-optimization-ad> package or\n<https://hackage.haskell.org/package/nonlinear-optimization-backprop nonlinear-optimization-backprop> package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }