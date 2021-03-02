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
      identifier = { name = "augur"; version = "2008.10.19"; };
      license = "BSD-3-Clause";
      copyright = "2008, Lemmih";
      maintainer = "Lemmih <lemmih@gmail.com>";
      author = "Lemmih <lemmih@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Program for renaming media files.";
      description = "Augur is a tool for parsing and renaming TV episodes. Examples:\n@\nThe.4400.S04E02.DSR.XviD-ORENJi.avi\n-> The 4400 - 4x02 - Fear Itself.avi\n24.S06E01.6AM.TO.7AM.PROPER.DVDRip.XviD-MEMETiC.avi\n-> 24 - 6x01 - Day 6: 6:00 AM - 7:00 AM.avi\n@\nThe pretty printing format is configurable with the default being @%S - %sx%2e - %E.%l@.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "augur" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."classify" or (errorHandler.buildDepError "classify"))
            ];
          buildable = true;
          };
        };
      };
    }