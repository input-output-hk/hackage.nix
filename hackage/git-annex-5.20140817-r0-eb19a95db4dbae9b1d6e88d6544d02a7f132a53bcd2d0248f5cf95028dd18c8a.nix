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
      webapp-secure = true;
      pairing = true;
      xmpp = true;
      dns = true;
      production = true;
      android = false;
      androidsplice = false;
      testsuite = true;
      tdfa = true;
      feed = true;
      quvi = true;
      tahoe = true;
      cryptohash = true;
      desktopnotify = true;
      ekg = false;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "5.20140817"; };
      license = "GPL-3.0-only";
      copyright = "2010-2014 Joey Hess";
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
          depends = ((((((((((((((((([
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
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
              (hsPkgs."Win32-extras" or (errorHandler.buildDepError "Win32-extras"))
              (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ pkgs.lib.optionals (flags.testsuite) [
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          ]) ++ (if flags.tdfa
            then [
              (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            ]
            else [
              (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ])) ++ pkgs.lib.optional (flags.cryptohash) (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))) ++ pkgs.lib.optional (flags.s3) (hsPkgs."hS3" or (errorHandler.buildDepError "hS3"))) ++ pkgs.lib.optionals (flags.webdav) [
            (hsPkgs."DAV" or (errorHandler.buildDepError "DAV"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ]) ++ pkgs.lib.optionals (flags.assistant) (if system.isLinux && flags.inotify
            then [
              (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            ]
            else if system.isOsx
              then [
                (hsPkgs."hfsevents" or (errorHandler.buildDepError "hfsevents"))
              ]
              else if system.isWindows
                then [
                  (hsPkgs."Win32-notify" or (errorHandler.buildDepError "Win32-notify"))
                ]
                else pkgs.lib.optionals (!system.isSolaris && !system.isLinux) (pkgs.lib.optional (flags.android) (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))))) ++ pkgs.lib.optionals (system.isLinux) (pkgs.lib.optional (flags.dbus) (hsPkgs."dbus" or (errorHandler.buildDepError "dbus")) ++ pkgs.lib.optionals (flags.desktopnotify) (pkgs.lib.optionals (flags.dbus) [
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."fdo-notify" or (errorHandler.buildDepError "fdo-notify"))
          ]))) ++ pkgs.lib.optional (flags.android) (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))) ++ pkgs.lib.optionals (flags.webapp) [
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-default" or (errorHandler.buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          ]) ++ pkgs.lib.optionals (flags.webapp && flags.webapp-secure) [
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          ]) ++ pkgs.lib.optionals (flags.pairing) [
            (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          ]) ++ pkgs.lib.optionals (flags.xmpp && !system.isWindows) [
            (hsPkgs."network-protocol-xmpp" or (errorHandler.buildDepError "network-protocol-xmpp"))
            (hsPkgs."gnutls" or (errorHandler.buildDepError "gnutls"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ]) ++ pkgs.lib.optional (flags.dns) (hsPkgs."dns" or (errorHandler.buildDepError "dns"))) ++ pkgs.lib.optional (flags.feed) (hsPkgs."feed" or (errorHandler.buildDepError "feed"))) ++ pkgs.lib.optional (flags.quvi) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.tahoe) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"));
          buildable = true;
        };
      };
    };
  }