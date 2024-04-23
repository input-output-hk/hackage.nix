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
      specVersion = "1.2";
      identifier = { name = "historian"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "max.rabkin@gmail.com";
      author = "Max Rabkin";
      homepage = "";
      url = "";
      synopsis = "Extract the interesting bits from shell history";
      description = "Extract interesting commands and add them to a text file.\n\\\"Interesting\\\" means not matching any regular expression in the\nfile. This allows one to keep a textual database of commands.\nNever again say \\\"I wish I remembered what arguments to give\nwibble to make it flibber the gibbet\\\" three months after you\nlooked it up.\nWARNING: historian truncates ~/.bash_history.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "historian" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }