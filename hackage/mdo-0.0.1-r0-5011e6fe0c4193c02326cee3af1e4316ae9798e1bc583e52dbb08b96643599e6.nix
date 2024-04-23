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
      identifier = { name = "mdo"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Command-line tool to run a command on each of the items.";
      description = "Usage: mdo COMMAND [BEFORE... --] ITEMS... [--- AFTER...]\nRun COMMAND on each of the ITEMS.\nArguments in BEFORE are used as initial arguments to each invocation.\nArguments in AFTER are used as trailing arguments to each invocation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mdo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }