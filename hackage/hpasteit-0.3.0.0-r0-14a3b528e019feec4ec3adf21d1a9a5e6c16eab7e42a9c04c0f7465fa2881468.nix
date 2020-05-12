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
      specVersion = "1.8";
      identifier = { name = "hpasteit"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Patrick Palka";
      maintainer = "patrick@parcs.ath.cx";
      author = "Patrick Palka";
      homepage = "http://github.com/parcs/hpasteit";
      url = "";
      synopsis = "A command-line client for hpaste.org";
      description = "HPasteIt is a command-line client for hpaste.org\n\nRun @hpasteit --help@ for usage information and @hpasteit COMMAND --help@ for\ndetailed usage information about a particular command.\n\nChanges in 0.3.0.0\n\n* 'paste' is now the default command, so you can upload a paste by simply doing\n@hpasteit mypaste.hs@\n\n* hpasteit now infers the title and language of the paste\n\n* hpasteit now reads from @\\\$HPASTE_AUTHOR@ to set the author if no author\nis explicitly provided\n\n* channels can be inputted without the leading hash-bangs\n\nChanges in 0.2.4.0\n\n* made the program unicode-aware\n\n* changed default title from \"via HPasteIt\" to \"(no title)\"";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpasteit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }