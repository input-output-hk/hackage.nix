let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "ad"; version = "0.44.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2010,\n(c) Barak Pearlmutter and Jeffrey Mark Siskind 2008-2009";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/ad";
      url = "";
      synopsis = "Automatic Differentiation";
      description = "Forward-, reverse- and mixed- mode automatic differentiation combinators with a common API.\n\nType-level \\\"branding\\\" is used to both prevent the end user from confusing infinitesimals\nand to limit unsafe access to the implementation details of each Mode.\n\nEach mode has a separate module full of combinators.\n\n* @Numeric.AD.Mode.Forward@ provides basic forward-mode AD. It is good for computing simple derivatives.\n\n* @Numeric.AD.Mode.Reverse@ uses benign side-effects to compute reverse-mode AD. It is good for computing gradients in one pass.\n\n* @Numeric.AD.Mode.Sparse@ computes a sparse forward-mode AD tower. It is good for higher derivatives or large numbers of outputs.\n\n* @Numeric.AD.Mode.Tower@ computes a dense forward-mode AD tower useful for higher derivatives of single input functions.\n\n* @Numeric.AD.Mode.Mixed@ computes using whichever mode or combination thereof is suitable to each individual combinator. This mode is the default, re-exported by @Numeric.AD@\n\n\nWhile not every mode can provide all operations, the following basic operations are supported, modified as\nappropriate by the suffixes below:\n\n* 'grad' computes the gradient (partial derivatives) of a function at a point.\n\n* 'jacobian' computes the Jacobian matrix of a function at a point.\n\n* 'diff' computes the derivative of a function at a point.\n\n* 'du' computes a directional derivative of a function at a point.\n\n* 'hessian' computes the Hessian matrix (matrix of second partial derivatives) of a function at a point.\n\nThe following suffixes alter the meanings of the functions above as follows:\n\n* @\\'@ -- also return the answer\n\n* @With@ lets the user supply a function to blend the input with the output\n\n* @F@ is a version of the base function lifted to return a 'Traversable' (or 'Functor') result\n\n* @s@ means the function returns all higher derivatives in a list or f-branching 'Stream'\n\n* @T@ means the result is transposed with respect to the traditional formulation.\n\n* @0@ means that the resulting derivative list is padded with 0s at the end.\n\nChanges since 0.40.0\n\n* Fixed bug fix for @'(/)' :: (Mode s, Fractional a) => AD s a@\n\n* Improved documentation\n\n* Regularized naming conventions\n\n* Exposed 'Id', probe, and lower methods via @Numeric.AD.Types@\n\n* Removed monadic combinators\n\n* Retuned the 'Mixed' mode jacobian calculations to only require a 'Functor'-based result.\n\n* Added unsafe variadic 'vgrad', 'vgrad'', and 'vgrads' combinators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-reify" or (buildDepError "data-reify"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        };
      };
    }