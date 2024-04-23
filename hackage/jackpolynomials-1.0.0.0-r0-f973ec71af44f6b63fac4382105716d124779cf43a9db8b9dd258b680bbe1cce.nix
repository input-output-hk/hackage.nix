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
      specVersion = "1.10";
      identifier = { name = "jackpolynomials"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2022 Stéphane Laurent";
      maintainer = "laurent_step@outlook.fr";
      author = "Stéphane Laurent";
      homepage = "https://github.com/stla/jackpolynomials#readme";
      url = "";
      synopsis = "Jack, zonal, and Schur polynomials";
      description = "This library can evaluate Jack polynomials, zonal polynomials and Schur polynomials. It is also able to compute them in symbolic form.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ilist" or (errorHandler.buildDepError "ilist"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."mpolynomials" or (errorHandler.buildDepError "mpolynomials"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
        ];
        buildable = true;
      };
    };
  }