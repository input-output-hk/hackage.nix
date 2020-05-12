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
      identifier = { name = "happybara-webkit-server"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Charles Strahan";
      maintainer = "Charles Strahan <charles.c.strahan@gmail.com>";
      author = "Charles Strahan";
      homepage = "https://github.com/cstrahan/happybara/happybara-webkit-server";
      url = "";
      synopsis = "WebKit Server binary for Happybara (taken from capybara-webkit)";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }