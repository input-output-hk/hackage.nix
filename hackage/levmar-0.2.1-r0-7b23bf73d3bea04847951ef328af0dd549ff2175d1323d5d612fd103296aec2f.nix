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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "levmar"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk & Bas van Dijk";
      maintainer = "vandijk.roel@gmail.com, v.dijk.bas@gmail.com";
      author = "Roel van Dijk & Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Levenberg-Marquardt algorithm";
      description = "The Levenberg-Marquardt algorithm is an iterative\ntechnique that finds a local minimum of a function that\nis expressed as the sum of squares of nonlinear\nfunctions. It has become a standard technique for\nnonlinear least-squares problems and can be thought of\nas a combination of steepest descent and the\nGauss-Newton method. When the current solution is far\nfrom the correct one, the algorithm behaves like a\nsteepest descent method: slow, but guaranteed to\nconverge. When the current solution is close to the\ncorrect solution, it becomes a Gauss-Newton method.\n\nOptional box- and linear constraints can be given. Both\nsingle and double precision floating point types are\nsupported.\n\nThe actual algorithm is implemented in a C library\nwhich is bundled with bindings-levmar which this\npackage depends on. See:\n<http://www.ics.forth.gr/~lourakis/levmar/>.\n\nThis library consists of two layers:\n\n* LevMar.Intermediate: A medium-level layer that wraps\nthe low-level functions from bindings-levmar to\nprovide a more Haskell friendly interface.\n\n* LevMar: A high-level layer that uses type-level\nprogramming to add extra type safety.\n\nEach layer also has special curve-fitting variants:\n\n* LevMar.Intermediate.Fitting\n\n* LevMar.Fitting\n\nEach layer also has special variants that automatically compute\nthe jacobian using automatic differentiation using Conal\nElliott's vector-space library:\n\n* LevMar.Intermediate.AD\n\n* LevMar.Intermediate.Fitting.AD\n\n* LevMar.AD\n\n* LevMar.Fitting.AD\n\nNote however that this feature is still very experimental!\n\nAll modules are self-contained; i.e. each module\nre-exports all the things you need to work with it.\n\nFor an example how to use this library see Demo.hs\nwhich is included in this package. Demo.hs is a Haskell\ntranslation of lmdemo.c from the C levmar library.\n\nA note regarding the license:\n\nThis library depends on bindings-levmar which is\nbundled together with a C library which falls under the\nGPL. Please be aware of this when distributing programs\nlinked with this library. For details see the\ndescription and license of bindings-levmar.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-levmar" or (errorHandler.buildDepError "bindings-levmar"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          ];
        buildable = true;
        };
      };
    }