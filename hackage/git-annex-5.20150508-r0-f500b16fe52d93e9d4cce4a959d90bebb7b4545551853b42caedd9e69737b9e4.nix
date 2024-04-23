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
      desktopnotify = true;
      torrentparser = true;
      ekg = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "5.20150508"; };
      license = "GPL-3.0-only";
      copyright = "2010-2014 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nIt can store large files in many places, from local hard drives, to a\nlarge number of cloud storage services, including S3, WebDAV,\nand rsync, with a dozen cloud storage providers usable via plugins.\nFiles can be stored encrypted with gpg, so that the cloud storage\nprovider cannot see your data. git-annex keeps track of where each file\nis stored, so it knows how many copies are available, and has many\nfacilities to ensure your data is preserved.\n\ngit-annex can also be used to keep a folder in sync between computers,\nnoticing when files are changed, and automatically committing them\nto git and transferring them to other computers. The git-annex webapp\nmakes it easy to set up and use git-annex this way.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "git-annex" = {
          depends = (((((((((((((((((([
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
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
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
              (hsPkgs."Win32-extras" or (errorHandler.buildDepError "Win32-extras"))
              (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
              (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
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
            ])) ++ pkgs.lib.optionals (flags.s3) [
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
            (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          ]) ++ pkgs.lib.optionals (flags.webdav) [
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
            (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
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
          ]) ++ pkgs.lib.optional (flags.dns) (hsPkgs."dns" or (errorHandler.buildDepError "dns"))) ++ pkgs.lib.optional (flags.feed) (hsPkgs."feed" or (errorHandler.buildDepError "feed"))) ++ pkgs.lib.optional (flags.quvi) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.tahoe) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optional (flags.torrentparser) (hsPkgs."torrent" or (errorHandler.buildDepError "torrent"))) ++ pkgs.lib.optional (flags.ekg) (hsPkgs."ekg" or (errorHandler.buildDepError "ekg"));
          buildable = true;
        };
      };
    };
  }