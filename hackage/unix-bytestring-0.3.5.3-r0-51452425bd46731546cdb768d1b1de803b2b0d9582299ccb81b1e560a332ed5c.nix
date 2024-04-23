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
      specVersion = "1.6";
      identifier = { name = "unix-bytestring"; version = "0.3.5.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010--2012 wren ng thornton";
      maintainer = "wren@community.haskell.org";
      author = "wren ng thornton";
      homepage = "http://code.haskell.org/~wren/";
      url = "";
      synopsis = "Unix/Posix-specific functions for ByteStrings.";
      description = "Unix\\/Posix-specific functions for ByteStrings.\n\nProvides @ByteString@ file-descriptor based I\\/O API, designed\nloosely after the @String@ file-descriptor based I\\/O API in\n\"System.Posix.IO\". The functions here wrap standard C implementations\nof the functions specified by the ISO\\/IEC 9945-1:1990 (``POSIX.1'')\nand X\\/Open Portability Guide Issue 4, Version 2 (``XPG4.2'')\nspecifications.\n\nNote that this package doesn't require the @unix@ package as a\ndependency. But you'll need it in order to get your hands on\nan @Fd@, so we're not offering a complete replacement.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }