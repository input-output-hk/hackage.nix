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
      identifier = { name = "git-annex"; version = "3.20110705"; };
      license = "LicenseRef-GPL";
      copyright = "2010-2011 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, checksumming time, or disk space.\n\nEven without file content tracking, being able to manage files with git,\nmove files around and delete files with versioned directory trees, and use\nbranches and distributed clones, are all very handy reasons to use git. And\nannexed files can co-exist in the same git repository with regularly\nversioned files, which is convenient for maintaining documents, Makefiles,\netc that are associated with annexed files but that benefit from full\nrevision control.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "git-annex" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."hS3" or (errorHandler.buildDepError "hS3"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "git-annex-shell" = { buildable = true; };
        "git-union-merge" = { buildable = true; };
        };
      };
    }