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
    flags = { old-time = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tar"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2015 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Bjorn Bringert <bjorn@bringert.net>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "Reading, writing and manipulating \".tar\" archive files.";
      description = "This library is for working with \\\"@.tar@\\\" archive files. It\ncan read and write a range of common variations of archive\nformat including V7, USTAR, POSIX and GNU formats. It provides\nsupport for packing and unpacking portable archives. This\nmakes it suitable for distribution but not backup because\ndetails like file ownership and exact permissions are not\npreserved.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ] ++ (if flags.old-time
          then [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ]
          else [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ]);
        buildable = true;
        };
      };
    }