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
      identifier = { name = "hsay"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Alexander Berntsen 2014";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "(ab)Use Google Translate as a speech synthesiser";
      description = "(ab)Use Google Translate as a speech synthesiser.\nDownloads mp3s from Google Translate with whatever\nyou wanted synthesised, and plays them with mpg123.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }