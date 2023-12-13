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
      identifier = { name = "defun"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Defunctionalization helpers";
      description = "The package @defun@ provides defunctionalization helpers, most importantly\ntype family 'DeFun.Core.App' allowing to write higher-order type families.\nThe @singletons@ package also has its own type family @Apply@,\nbut the machinery is tied to the @Sing@ / singletons.\n\nOnce @UnsaturatedTypeFamilies@ extension is implemented in GHC\n([Proposal 242](https://github.com/ghc-proposals/ghc-proposals/pull/242)),\nthis package will become more or less obsolete.\n\nIn particular, the @Lam@ counterpart @SLambda@ is specialized to @Sing@ arguments.\nThe @defun@'s @Lam@ is however fully general, so you can use your own singletons\nor (importantly) singleton-like arguments.\n\nThe package provides few defunctionalized functions, and their term-level\nreflections using @SBool@ and @NP@ data types from @singletons-bool@ and @sop-core@\npackages respectively.\n\nThis is the \"batteries-included\" variant with \"many\" dependencies; see the\n@defun-core@ package and other @defun-*@ dependencies if you need a more limited\ndependency footprint.\n\nThe [first-class-families](https://hackage.haskell.org/package/first-class-families) package has slightly different design,\nin particular it doesn't reuse existing (nor define) own standalone type families.\nIn @first-class-families@ everything has to be evaluated via its @Eval@ type family (which job is similar to @App@),\nbut @defun@ only makes /higher-order/ type families look different.\nIn short, ergonomics are a bit different.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."defun-bool" or (errorHandler.buildDepError "defun-bool"))
          (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
          (hsPkgs."defun-sop" or (errorHandler.buildDepError "defun-sop"))
          ];
        buildable = true;
        };
      tests = {
        "defun-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."defun" or (errorHandler.buildDepError "defun"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            ];
          buildable = true;
          };
        };
      };
    }