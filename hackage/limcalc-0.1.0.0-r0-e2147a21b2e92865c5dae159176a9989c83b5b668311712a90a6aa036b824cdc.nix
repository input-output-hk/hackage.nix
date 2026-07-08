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
      specVersion = "3.0";
      identifier = { name = "limcalc"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2026 Jason Parker";
      maintainer = "jparker588@gmail.com";
      author = "Jason Parker";
      homepage = "https://github.com/penny4nonsense/limcalc";
      url = "";
      synopsis = "Limit-based symbolic calculus engine via log-Puiseux series";
      description = "limcalc is a symbolic calculus engine grounded in the limit definition\nrather than rewriting rules. The core thesis: the derivative is a limit,\nso compute it that way — expand f(x+h) as a log-Puiseux series in h and\nread off the h^1 coefficient. The product rule and chain rule are not\nimplemented; both are consequences of the limit definition and are\nobservable in the output.\n.\nThe log-Puiseux series type supports terms of the form\nc * h^p * log(h)^k with c an algebraic number, p rational, and k a\nnatural number. This is strictly more expressive than pure Puiseux\nseries: the cosine integral Ci and exponential integral Ei have genuine\nlogarithmic singularities that cannot be represented as pure power series.\n.\nCapabilities:\n.\n* Univariate and multivariate limits with certified result types\n  (Exists, Pole, DoesNotExist, LimitError)\n.\n* Symbolic differentiation — gradient, Jacobian, Hessian — derived\n  from the same log-Puiseux representation, without rule tables\n.\n* Integration via the Risch algorithm over the differential field the\n  representation naturally provides, with NonElementary as a proved\n  certificate when no elementary antiderivative exists\n.\n* Recognition of non-elementary integrals as named special functions:\n  erf, Si, Ci, Ei, li\n.\n* JSON line protocol CLI (limcalc-cli) for language-agnostic use;\n  a Python interface is available as the limcalc-py package on PyPI";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ];
        buildable = true;
      };
      exes = {
        "limcalc-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."limcalc" or (errorHandler.buildDepError "limcalc"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "limcalc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."limcalc" or (errorHandler.buildDepError "limcalc"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }