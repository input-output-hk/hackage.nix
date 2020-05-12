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
      identifier = { name = "slope-field"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2016 Mahdi Dibaiee";
      maintainer = "mdibaiee@aol.com";
      author = "Mahdi Dibaiee";
      homepage = "https://github.com/mdibaiee/slope-field";
      url = "";
      synopsis = "Visualize mathematical function's slope fields";
      description = "Visualize mathematical function's slope fields";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mathexpr" or (errorHandler.buildDepError "mathexpr"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      exes = {
        "slope-field" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."slope-field" or (errorHandler.buildDepError "slope-field"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            ];
          buildable = true;
          };
        };
      };
    }