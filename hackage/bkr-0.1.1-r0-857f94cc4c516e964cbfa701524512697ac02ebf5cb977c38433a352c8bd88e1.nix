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
      identifier = { name = "bkr"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Michael Smietana";
      maintainer = "Michael Smietana <michael@smietana.se>";
      author = "Michael Smietana <michael@smietana.se>";
      homepage = "https://github.com/ingesson/bkr";
      url = "";
      synopsis = "Backup utility for backing up to cloud storage services (S3 only right now)";
      description = "Easy to use backup tool utilizing cloud services (S3 only right now) as backup storage.\nbkr is in very early development stage. Right now bkr is rather a synchronization then a backup utility. bkr uploads files from wanted folders to a remote storage service, next time it runs it checks for changes and uploads new or altered files but does not keep copies of altered files (hence rather synchronization then backup). For more information about installation and setup, release notes and more please visit https:\\/\\/github.com\\/ingesson\\/bkr. All suggestions and bug reports are of course more then welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.gt "7.2") [
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
        ];
        buildable = true;
      };
      exes = {
        "bkr" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC-sqlite3" or (errorHandler.buildDepError "HDBC-sqlite3"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.gt "7.2") [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }