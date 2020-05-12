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
    flags = {
      s3 = true;
      webdav = true;
      inotify = true;
      dbus = true;
      assistant = true;
      webapp = true;
      pairing = true;
      xmpp = true;
      dns = true;
      production = true;
      android = false;
      testsuite = true;
      tdfa = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "4.20130601"; };
      license = "LicenseRef-GPL";
      copyright = "2010-2013 Joey Hess";
      maintainer = "Joey Hess <joey@kitenet.net>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nEven without file content tracking, being able to manage files with git,\nmove files around and delete files with versioned directory trees, and use\nbranches and distributed clones, are all very handy reasons to use git. And\nannexed files can co-exist in the same git repository with regularly\nversioned files, which is convenient for maintaining documents, Makefiles,\netc that are associated with annexed files but that benefit from full\nrevision control.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "git-annex" = {
          depends = (((((((((((([
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bloomfilter" or (errorHandler.buildDepError "bloomfilter"))
            (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.testsuite) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))) ++ (pkgs.lib).optional (flags.tdfa) (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))) ++ (pkgs.lib).optional (flags.s3) (hsPkgs."hS3" or (errorHandler.buildDepError "hS3"))) ++ (pkgs.lib).optionals (flags.webdav) [
            (hsPkgs."DAV" or (errorHandler.buildDepError "DAV"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ]) ++ (pkgs.lib).optionals (flags.assistant && !system.isWindows && !system.isSolaris) [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            ]) ++ (pkgs.lib).optional (flags.android) (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))) ++ (if system.isLinux && flags.inotify
            then [
              (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
              ]
            else (pkgs.lib).optional (system.isOsx) (hsPkgs."hfsevents" or (errorHandler.buildDepError "hfsevents")))) ++ (pkgs.lib).optional (system.isLinux && flags.dbus) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))) ++ (pkgs.lib).optionals (flags.webapp) [
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-default" or (errorHandler.buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            ]) ++ (pkgs.lib).optionals (flags.pairing) [
            (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
            ]) ++ (pkgs.lib).optionals (flags.xmpp) [
            (hsPkgs."network-protocol-xmpp" or (errorHandler.buildDepError "network-protocol-xmpp"))
            (hsPkgs."gnutls" or (errorHandler.buildDepError "gnutls"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ]) ++ (pkgs.lib).optional (flags.dns) (hsPkgs."dns" or (errorHandler.buildDepError "dns"));
          buildable = true;
          };
        };
      };
    }