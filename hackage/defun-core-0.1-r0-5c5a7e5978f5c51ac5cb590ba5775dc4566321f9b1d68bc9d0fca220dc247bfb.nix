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
      specVersion = "2.4";
      identifier = { name = "defun-core"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Defunctionalization helpers: core definitions";
      description = "The package @defun@ provides defunctionalization helpers, most importantly\ntype family 'DeFun.Core.App' allowing to write higher-order type families.\nThe @singletons@ package also has its own type family @Apply@,\nbut the machinery is tied to the @Sing@ / singletons.\n\nIn particular, the @Lam@ counterpart @SLambda@ is specialized to @Sing@ arguments.\nThe @defun@'s @Lam@ is however fully general, so you can use your own singletons\nor (importantly) singleton-like arguments.\n\nThe package provides few defunctionalized functions, and their term-level\nvariants can be found in @defun-bool@ and @defun-sop@ packages,\nwhich use @SBool@ and @NP@ data types from @singletons-bool@ and @sop-core@\npackages respectively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }