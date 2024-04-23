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
      specVersion = "1.24";
      identifier = { name = "fix-whitespace"; version = "0.0.10"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Liang-Ting Chen <liang.ting.chen.tw@gmail.com>, Andreas Abel";
      author = "fix-whitespace was originally written by Nils Anders Danielsson as part of Agda 2 with contributions from Ulf Norell, Andrés Sicard-Ramírez, Andreas Abel, Philipp Hausmann, Jesper Cockx, Vlad Semenov, and Liang-Ting Chen.";
      homepage = "https://github.com/agda/fix-whitespace";
      url = "";
      synopsis = "Fixes whitespace issues.";
      description = "Removes trailing whitespace, lines containing only whitespace, expands tabs,\nand ensures that every file ends in a newline character.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fix-whitespace" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."filepattern" or (errorHandler.buildDepError "filepattern"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4.1" || compiler.isGhc && compiler.version.gt "8.4.3") (hsPkgs."text" or (errorHandler.buildDepError "text"));
          buildable = true;
        };
      };
    };
  }