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
      identifier = { name = "hpg"; version = "0.2"; };
      license = "ISC";
      copyright = "";
      maintainer = "fritjof@alokat.org";
      author = "Fritjof Bornebusch";
      homepage = "https://git.alokat.org/hpg";
      url = "";
      synopsis = "no";
      description = "hpg is a free ISC licensed password generator.\nIt can create passwords based on the following\ncharacters:\n* upper case letters\n* lower case letters\n* special characters\n* numbers\nThe password length is limited to 2^16 due to\nperformance issues.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ pkgs.lib.optional (system.isOpenbsd) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
      };
    };
  }