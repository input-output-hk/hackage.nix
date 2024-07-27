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
      assistant = true;
      webapp = true;
      pairing = true;
      production = true;
      android = false;
      androidsplice = false;
      torrentparser = true;
      magicmime = true;
      concurrentoutput = true;
      benchmark = false;
      network-uri = true;
      dbus = true;
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "6.20180626"; };
      license = "GPL-3.0-only";
      copyright = "2010-2017 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nIt can store large files in many places, from local hard drives, to a\nlarge number of cloud storage services, including S3, WebDAV,\nand rsync, with a dozen cloud storage providers usable via plugins.\nFiles can be stored encrypted with gpg, so that the cloud storage\nprovider cannot see your data. git-annex keeps track of where each file\nis stored, so it knows how many copies are available, and has many\nfacilities to ensure your data is preserved.\n\ngit-annex can also be used to keep a folder in sync between computers,\nnoticing when files are changed, and automatically committing them\nto git and transferring them to other computers. The git-annex webapp\nmakes it easy to set up and use git-annex this way.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.hslogger or (pkgs.pkgsBuildBuild.hslogger or (errorHandler.setupDepError "hslogger")))
        (hsPkgs.pkgsBuildBuild.split or (pkgs.pkgsBuildBuild.split or (errorHandler.setupDepError "split")))
        (hsPkgs.pkgsBuildBuild.unix-compat or (pkgs.pkgsBuildBuild.unix-compat or (errorHandler.setupDepError "unix-compat")))
        (hsPkgs.pkgsBuildBuild.process or (pkgs.pkgsBuildBuild.process or (errorHandler.setupDepError "process")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.exceptions or (pkgs.pkgsBuildBuild.exceptions or (errorHandler.setupDepError "exceptions")))
        (hsPkgs.pkgsBuildBuild.bytestring or (pkgs.pkgsBuildBuild.bytestring or (errorHandler.setupDepError "bytestring")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.IfElse or (pkgs.pkgsBuildBuild.IfElse or (errorHandler.setupDepError "IfElse")))
        (hsPkgs.pkgsBuildBuild.data-default or (pkgs.pkgsBuildBuild.data-default or (errorHandler.setupDepError "data-default")))
        (hsPkgs.pkgsBuildBuild.utf8-string or (pkgs.pkgsBuildBuild.utf8-string or (errorHandler.setupDepError "utf8-string")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      exes = {
        "git-annex" = {
          depends = ((((((((((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."IfElse" or (errorHandler.buildDepError "IfElse"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bloomfilter" or (errorHandler.buildDepError "bloomfilter"))
            (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."socks" or (errorHandler.buildDepError "socks"))
            (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."securemem" or (errorHandler.buildDepError "securemem"))
            (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
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
              (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
              (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ]
            else [
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ])) ++ pkgs.lib.optional (flags.s3) (hsPkgs."aws" or (errorHandler.buildDepError "aws"))) ++ pkgs.lib.optional (flags.webdav) (hsPkgs."DAV" or (errorHandler.buildDepError "DAV"))) ++ pkgs.lib.optionals (flags.assistant && !system.isSolaris && !system.isHurd) [
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."mountpoints" or (errorHandler.buildDepError "mountpoints"))
          ]) ++ pkgs.lib.optionals (flags.assistant) (if system.isLinux || flags.android
            then [
              (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            ]
            else if system.isOsx
              then [
                (hsPkgs."hfsevents" or (errorHandler.buildDepError "hfsevents"))
              ]
              else pkgs.lib.optional (system.isWindows) (hsPkgs."Win32-notify" or (errorHandler.buildDepError "Win32-notify")))) ++ pkgs.lib.optionals (flags.dbus) (pkgs.lib.optionals (system.isLinux) [
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."fdo-notify" or (errorHandler.buildDepError "fdo-notify"))
          ])) ++ (if flags.android
            then [
              (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))
            ]
            else [
              (hsPkgs."disk-free-space" or (errorHandler.buildDepError "disk-free-space"))
            ])) ++ pkgs.lib.optionals (flags.webapp) [
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          ]) ++ pkgs.lib.optionals (flags.pairing) [
            (hsPkgs."network-multicast" or (errorHandler.buildDepError "network-multicast"))
            (hsPkgs."network-info" or (errorHandler.buildDepError "network-info"))
          ]) ++ pkgs.lib.optional (flags.torrentparser) (hsPkgs."torrent" or (errorHandler.buildDepError "torrent"))) ++ pkgs.lib.optionals (flags.magicmime) (pkgs.lib.optional (!system.isWindows) (hsPkgs."magic" or (errorHandler.buildDepError "magic")))) ++ pkgs.lib.optional (flags.concurrentoutput) (hsPkgs."concurrent-output" or (errorHandler.buildDepError "concurrent-output"))) ++ pkgs.lib.optionals (flags.benchmark) [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }