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
      specVersion = "2.0";
      identifier = { name = "ostree-pin"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "2019-2021, 2023 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/ostree-pin";
      url = "";
      synopsis = "Tool to re-pin ostree deployments";
      description = "CLI tool for easily pinning the current ostree deployment";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ostree-pin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
            (hsPkgs."gi-ostree" or (errorHandler.buildDepError "gi-ostree"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }