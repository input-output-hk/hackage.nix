{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      asciiprogress = false;
      ekg = false;
      network-uri = true;
      database = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "5.20150727"; };
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
          depends = (((((((((((((((((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."SafeSemaphore" or ((hsPkgs.pkgs-errors).buildDepError "SafeSemaphore"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."sandi" or ((hsPkgs.pkgs-errors).buildDepError "sandi"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bloomfilter" or ((hsPkgs.pkgs-errors).buildDepError "bloomfilter"))
            (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ])) ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              (hsPkgs."Win32-extras" or ((hsPkgs.pkgs-errors).buildDepError "Win32-extras"))
              (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
              (hsPkgs."setenv" or ((hsPkgs.pkgs-errors).buildDepError "setenv"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ])) ++ (pkgs.lib).optionals (flags.testsuite) [
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or ((hsPkgs.pkgs-errors).buildDepError "tasty-rerun"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            ]) ++ (if flags.tdfa
            then [
              (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
              ]
            else [
              (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
              ])) ++ (pkgs.lib).optionals (flags.s3) [
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
            (hsPkgs."aws" or ((hsPkgs.pkgs-errors).buildDepError "aws"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            ]) ++ (pkgs.lib).optionals (flags.webdav) [
            (hsPkgs."DAV" or ((hsPkgs.pkgs-errors).buildDepError "DAV"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            ]) ++ (pkgs.lib).optionals (flags.assistant) (if system.isLinux && flags.inotify
            then [
              (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))
              ]
            else if system.isOsx
              then [
                (hsPkgs."hfsevents" or ((hsPkgs.pkgs-errors).buildDepError "hfsevents"))
                ]
              else if system.isWindows
                then [
                  (hsPkgs."Win32-notify" or ((hsPkgs.pkgs-errors).buildDepError "Win32-notify"))
                  ]
                else (pkgs.lib).optionals (!system.isSolaris && !system.isLinux) ((pkgs.lib).optional (flags.android) (hsPkgs."hinotify" or ((hsPkgs.pkgs-errors).buildDepError "hinotify"))))) ++ (pkgs.lib).optionals (system.isLinux) ((pkgs.lib).optional (flags.dbus) (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus")) ++ (pkgs.lib).optionals (flags.desktopnotify) ((pkgs.lib).optionals (flags.dbus) [
            (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
            (hsPkgs."fdo-notify" or ((hsPkgs.pkgs-errors).buildDepError "fdo-notify"))
            ]))) ++ (pkgs.lib).optional (flags.android) (hsPkgs."data-endian" or ((hsPkgs.pkgs-errors).buildDepError "data-endian"))) ++ (pkgs.lib).optionals (flags.webapp) [
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-default" or ((hsPkgs.pkgs-errors).buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or ((hsPkgs.pkgs-errors).buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."path-pieces" or ((hsPkgs.pkgs-errors).buildDepError "path-pieces"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or ((hsPkgs.pkgs-errors).buildDepError "crypto-api"))
            (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            ]) ++ (pkgs.lib).optionals (flags.webapp && flags.webapp-secure) [
            (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
            (hsPkgs."securemem" or ((hsPkgs.pkgs-errors).buildDepError "securemem"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            ]) ++ (pkgs.lib).optionals (flags.pairing) [
            (hsPkgs."network-multicast" or ((hsPkgs.pkgs-errors).buildDepError "network-multicast"))
            (hsPkgs."network-info" or ((hsPkgs.pkgs-errors).buildDepError "network-info"))
            ]) ++ (pkgs.lib).optionals (flags.xmpp && !system.isWindows) [
            (hsPkgs."network-protocol-xmpp" or ((hsPkgs.pkgs-errors).buildDepError "network-protocol-xmpp"))
            (hsPkgs."gnutls" or ((hsPkgs.pkgs-errors).buildDepError "gnutls"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            ]) ++ (pkgs.lib).optional (flags.dns) (hsPkgs."dns" or ((hsPkgs.pkgs-errors).buildDepError "dns"))) ++ (pkgs.lib).optional (flags.feed) (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))) ++ (pkgs.lib).optional (flags.quvi) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.tahoe) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.torrentparser) (hsPkgs."torrent" or ((hsPkgs.pkgs-errors).buildDepError "torrent"))) ++ (pkgs.lib).optionals (flags.database) [
            (hsPkgs."esqueleto" or ((hsPkgs.pkgs-errors).buildDepError "esqueleto"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-template" or ((hsPkgs.pkgs-errors).buildDepError "persistent-template"))
            ]) ++ (pkgs.lib).optionals (flags.asciiprogress) [
            (hsPkgs."ascii-progress" or ((hsPkgs.pkgs-errors).buildDepError "ascii-progress"))
            (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
            ]) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"));
          buildable = true;
          };
        };
      };
    }