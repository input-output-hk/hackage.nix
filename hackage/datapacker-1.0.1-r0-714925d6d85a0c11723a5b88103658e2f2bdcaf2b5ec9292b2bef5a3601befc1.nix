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
      identifier = { name = "datapacker"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2008 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/datapacker";
      url = "";
      synopsis = "Tool to help pack files into the minimum number of CDs/DVDs/etc";
      description = "datapacker is a tool to group files by size. It is\ndesigned to group files such that they fill fixed-size containers\n(called \"bins\") using the minimum number of containers. This is\nuseful, for instance, if you want to archive a number of files to CD\nor DVD, and want to organize them such that you use the minimum\npossible number of CDs or DVDs.\n\nIn many cases, datapacker executes almost instantaneously. Of\nparticular note, the hardlink action can be used\nto effectively copy data into bins without having to actually copy\nthe data at all.\n\ndatapacker is a tool in the traditional Unix style; it can be used in\npipes and call other tools.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "datapacker" = {
          depends = [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }