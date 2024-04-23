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
      identifier = { name = "hkgr"; version = "0.4.3.2"; };
      license = "GPL-3.0-only";
      copyright = "2019-2023  Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/hkgr";
      url = "";
      synopsis = "Simple Hackage release workflow for package maintainers";
      description = "Hkgr (Hackager) is a tool to help make new releases of\nHaskell packages, with commands for git tagging, pristine sdist,\nand uploading to Hackage.\nThere is also a command for creating a new local project.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hkgr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."simple-cabal" or (errorHandler.buildDepError "simple-cabal"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ];
          buildable = true;
        };
      };
    };
  }