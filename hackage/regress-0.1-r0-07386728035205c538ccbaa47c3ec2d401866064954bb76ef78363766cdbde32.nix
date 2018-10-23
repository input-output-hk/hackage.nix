{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "regress";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/alpmestan/regress";
      url = "";
      synopsis = "Linear and logistic regression through automatic differentiation";
      description = "Linear and logistic regression through automatic differentiation\n\nSee \"Numeric.Regression.Linear\" and \"Numeric.Regression.Logistic\" for\ndocs and examples.";
      buildType = "Simple";
    };
    components = {
      "regress" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ad)
          (hsPkgs.vector)
        ];
      };
    };
  }