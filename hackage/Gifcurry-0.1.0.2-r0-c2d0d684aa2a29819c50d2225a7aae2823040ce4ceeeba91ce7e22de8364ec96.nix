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
      identifier = { name = "Gifcurry"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "(C) 2016 David Lettier 2016";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/gifcurry";
      url = "";
      synopsis = "Create animated GIFs, overlaid with optional text, from movies.";
      description = "GIF creation utility.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gifcurry_gui" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        "gifcurry_cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }