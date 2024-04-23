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
      identifier = { name = "mdcat"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "dorafmon@gmail.com";
      author = "Bob Fang";
      homepage = "https://github.com/dorafmon/mdcat";
      url = "";
      synopsis = "Markdown viewer in your terminal";
      description = "A simple command line tool for viewing markdown in your terminal";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mdcat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
          ];
          buildable = true;
        };
      };
    };
  }