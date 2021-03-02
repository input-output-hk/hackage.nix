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
      identifier = { name = "darcs-graph"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
      };
    components = {
      exes = {
        "darcs-graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fps" or (errorHandler.buildDepError "fps"))
            ];
          buildable = true;
          };
        };
      };
    }