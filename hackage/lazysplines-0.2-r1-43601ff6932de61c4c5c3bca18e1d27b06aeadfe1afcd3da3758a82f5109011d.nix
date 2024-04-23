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
      identifier = { name = "lazysplines"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gbazerman@gmail.com";
      author = "Gershom Bazerman, Jeff Polakow";
      homepage = "";
      url = "";
      synopsis = "Differential solving with lazy splines";
      description = "Differential solving with lazy splines. Source code to accompany the draft paper at <http://gbaz.github.io/slides/ode-draft-2009.pdf>. See the source of Numeric.LazySplines.Examples for usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }