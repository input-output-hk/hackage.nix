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
      identifier = { name = "monoid-semiring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "untruth.51-room@icloud.com";
      author = "Nicolas FP PARIS";
      homepage = "https://github.com/nrolland/cauchy-haskell";
      url = "";
      synopsis = "The monoid semiring M ->0 S and its generalized Cauchy product";
      description = "Finitely supported functions from a monoid M to a semiring S,\nmultiplied by convolution (f*g)(s) = sum over uv=s of f(u).g(v).\nPolynomials, formal languages, tropical algebra are instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
        ];
        buildable = true;
      };
      tests = {
        "oracle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
            (hsPkgs."monoid-semiring" or (errorHandler.buildDepError "monoid-semiring"))
          ];
          buildable = true;
        };
      };
    };
  }