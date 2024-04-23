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
      identifier = { name = "reflex-dom-helpers"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Matthew Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matthew Parsons";
      homepage = "https://github.com/layer-3-communications/reflex-dom-helpers";
      url = "";
      synopsis = "Html tag helpers for reflex-dom";
      description = "Allows one to write html tags as top level functions in reflex-dom,\nsuch as img instead of el \"img\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."reflex-dom-core" or (errorHandler.buildDepError "reflex-dom-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "reflex-dom-helpers-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."reflex-dom-helpers" or (errorHandler.buildDepError "reflex-dom-helpers"))
          ];
          buildable = true;
        };
      };
    };
  }