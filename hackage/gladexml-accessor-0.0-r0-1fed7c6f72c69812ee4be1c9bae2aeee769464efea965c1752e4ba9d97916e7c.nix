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
      specVersion = "1.0";
      identifier = { name = "gladexml-accessor"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yakov@yakov.cc";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Automagically declares getters for widget handles in specified interface file.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
          ];
        buildable = true;
        };
      };
    }