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
      identifier = { name = "HFitUI"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 QSpider";
      maintainer = "iqsf@ya.ru";
      author = "Pavel";
      homepage = "https://github.com/iqsf/HFitUI.git";
      url = "";
      synopsis = "The library for generating a graphical interface on the web";
      description = "The library for generating a graphical interface on the web for the Haskell programming language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      exes = {
        "HFitUI-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HFitUI" or (errorHandler.buildDepError "HFitUI"))
            ];
          buildable = true;
          };
        };
      tests = {
        "HFitUI-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HFitUI" or (errorHandler.buildDepError "HFitUI"))
            ];
          buildable = true;
          };
        };
      };
    }