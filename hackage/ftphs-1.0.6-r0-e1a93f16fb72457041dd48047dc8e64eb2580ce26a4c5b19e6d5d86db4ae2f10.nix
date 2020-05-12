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
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "ftphs"; version = "1.0.6"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2004-2010 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/ftphs";
      url = "";
      synopsis = "FTP Client and Server Library";
      description = "ftphs provides a Haskell library to implement a FTP client\nand a FTP server.\n\nftphs has a number of features:\n\n* Easy to use operation\n* Full support of text and binary transfers\n* Optional lazy interaction\n* Server can serve up a real or a virtual filesystem tree\n* Standards compliant";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }