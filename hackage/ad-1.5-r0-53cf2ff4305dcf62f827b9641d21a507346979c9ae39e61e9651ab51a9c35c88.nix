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
      identifier = { name = "ad"; version = "1.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2010-2012,\n(c) Barak Pearlmutter and Jeffrey Mark Siskind 2008-2009";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/ad";
      url = "";
      synopsis = "Automatic Differentiation";
      description = "Forward-, reverse- and mixed- mode automatic differentiation combinators with a common API.\n\nType-level \\\"branding\\\" is used to both prevent the end user from confusing infinitesimals\nand to limit unsafe access to the implementation details of each Mode.\n\nEach mode has a separate module full of combinators.\n\n* @Numeric.AD.Mode.Forward@ provides basic forward-mode AD. It is good for computing simple derivatives.\n\n* @Numeric.AD.Mode.Reverse@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass.\n\n* @Numeric.AD.Mode.Sparse@ computes a sparse forward-mode AD tower. It is good for higher derivatives or large numbers of outputs.\n\n* @Numeric.AD.Mode.Tower@ computes a dense forward-mode AD tower useful for higher derivatives of single input functions.\n\n* @Numeric.AD@ computes using whichever mode or combination thereof is suitable to each individual combinator.\n\nWhile not every mode can provide all operations, the following basic operations are supported, modified as\nappropriate by the suffixes below:\n\n* 'grad' computes the gradient (partial derivatives) of a function at a point.\n\n* 'jacobian' computes the Jacobian matrix of a function at a point.\n\n* 'diff' computes the derivative of a function at a point.\n\n* 'du' computes a directional derivative of a function at a point.\n\n* 'hessian' computes the Hessian matrix (matrix of second partial derivatives) of a function at a point.\n\nThe following suffixes alter the meanings of the functions above as follows:\n\n* @\\'@ -- also return the answer\n\n* @With@ lets the user supply a function to blend the input with the output\n\n* @F@ is a version of the base function lifted to return a 'Traversable' (or 'Functor') result\n\n* @s@ means the function returns all higher derivatives in a list or f-branching 'Stream'\n\n* @T@ means the result is transposed with respect to the traditional formulation.\n\n* @0@ means that the resulting derivative list is padded with 0s at the end.\n\n/Changes since 1.3/:\n\n* Moved the contents of @Numeric.AD.Mode.Mixed@ into @Numeric.AD@\n\n* Split off @Numeric.AD.Variadic@ for the variadic combinators\n\n* Removed the @UU@, @FU@, @UF@, and @FF@ type aliases.\n\n* Stopped exporting the types for @Mode@ and @AD@ from almost every module. Import @Numeric.AD.Types@ if necessary.\n\n* Renamed @Tensors@ to @Jet@\n\n* Dependency bump to be compatible with ghc 7.4.1 and mtl 2.1\n\n* More aggressive zero tracking.\n\n* @diff (**n) 0@ for constant n and @diff (0**)@ both now yield the correct answer for all modes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }