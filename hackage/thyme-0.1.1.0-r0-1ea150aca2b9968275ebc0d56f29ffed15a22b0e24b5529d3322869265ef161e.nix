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
    flags = { instance-num = true; show-internal = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "thyme"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU, Ashley Yakeley";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "A faster time library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }