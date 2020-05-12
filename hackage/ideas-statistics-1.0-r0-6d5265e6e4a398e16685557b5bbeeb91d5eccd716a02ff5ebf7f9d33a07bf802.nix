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
      specVersion = "1.8.0.2";
      identifier = { name = "ideas-statistics"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2020";
      maintainer = "bastiaan.heeren@ou.nl";
      author = "Bastiaan Heeren, Sietske Tacoma, Noeri Huisman";
      homepage = "http://ideas.cs.uu.nl/";
      url = "";
      synopsis = "Interactive domain reasoner for statistics";
      description = "Interactive domain reasoner for statistics, based on the feedback services\nof the Ideas framework. Provides feedback and hints on step-by-step construction\nof hypothesis tests by students. Test types supported include z-tests, t-tests\nfor one group, dependent groups and independent groups, correlation, ANOVA and\nChi-square tests. The domain reasoner is used by the learning environment Numworx\n(www.numworx.nl) and is available for implementation in other learning\nenvironments as well.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "statistics.cgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ideas" or (errorHandler.buildDepError "ideas"))
            (hsPkgs."ideas-math-types" or (errorHandler.buildDepError "ideas-math-types"))
            ];
          buildable = true;
          };
        };
      };
    }