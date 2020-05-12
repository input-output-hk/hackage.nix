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
    flags = { static = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcswatch"; version = "0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner";
      homepage = "http://darcswatch.nomeata.de/";
      url = "";
      synopsis = "Track application of Darcs patches";
      description = "DarcsWatch is a tool to track the state of darcs patches\nthat have been submitted to some project, usually by\nusing the \"darcs send\" command. It allows both submitters\nand project maintainers to get an overview of patches that\nhave been submitted but not yet applied. Some notable features are:\n\n* Reads both darcs1 and darcs2.0 (hashed) format repositories.\n\n* Displays patch summaries per user and per repository.\n\n* Patch diff can be reviewed directly.\n\n* Download link for each patch, to apply without searching for the email.\n\n* Knows about inverse and amend-recorded patches and uses them to consider\n\n* Integrates into http://bugs.darcs.net/\n\n* Optionally sends out mails to mailing lists when a patch is applied to a repository\npatches obsolete.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcswatch-generate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."nano-md5" or (errorHandler.buildDepError "nano-md5"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."concurrentoutput" or (errorHandler.buildDepError "concurrentoutput"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mime-string" or (errorHandler.buildDepError "mime-string"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "darcswatch-import-mail" = { buildable = true; };
        "darcswatch-import-bundle" = { buildable = true; };
        "darcswatch-convert-data" = { buildable = true; };
        "darcswatch-pull-repos" = { buildable = true; };
        "darcswatch-update-data" = { buildable = true; };
        "darcswatch-cgi" = { buildable = true; };
        };
      };
    }