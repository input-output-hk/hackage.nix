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
      identifier = { name = "azubi"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "azubi@ingolf-wagner.de";
      author = "Ingolf Wagner";
      homepage = "http://azubi.github.com";
      url = "";
      synopsis = "A simple DevOps tool which will \"reach\" the enterprice level.";
      description = "A simple DevOps tool which will \"reach\" the enterprice level.\nIt is basically a Haskell lib which you can use to create\nnice scripts that setup you computer, via ssh bashscrip,\nDockerfile, etc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."options" or (errorHandler.buildDepError "options"))
          ];
        buildable = true;
        };
      exes = {
        "config" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."options" or (errorHandler.buildDepError "options"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }