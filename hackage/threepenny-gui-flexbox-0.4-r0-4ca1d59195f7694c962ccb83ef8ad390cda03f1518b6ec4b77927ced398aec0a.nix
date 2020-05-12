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
      identifier = { name = "threepenny-gui-flexbox"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jeremy Barisch-Rooney";
      maintainer = "barischj@tcd.ie";
      author = "Jeremy Barisch-Rooney";
      homepage = "https://github.com/barischj/threepenny-gui-flexbox";
      url = "";
      synopsis = "Flexbox layouts for Threepenny-gui.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clay" or (errorHandler.buildDepError "clay"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "threepenny-flexbox-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
            (hsPkgs."threepenny-gui-flexbox" or (errorHandler.buildDepError "threepenny-gui-flexbox"))
            ];
          buildable = true;
          };
        };
      };
    }