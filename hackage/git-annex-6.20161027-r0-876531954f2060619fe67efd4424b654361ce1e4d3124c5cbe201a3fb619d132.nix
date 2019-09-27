let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      testsuite = true;
      torrentparser = true;
      magicmime = true;
      concurrentoutput = true;
      benchmark = false;
      network-uri = true;
      cryptonite = true;
      dbus = true;
      xmpp = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "6.20161027"; };
      license = "GPL-3.0-only";
      copyright = "2010-2016 Joey Hess";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "http://git-annex.branchable.com/";
      url = "";
      synopsis = "manage files with git, without checking their contents into git";
      description = "git-annex allows managing files with git, without checking the file\ncontents into git. While that may seem paradoxical, it is useful when\ndealing with files larger than git can currently easily handle, whether due\nto limitations in memory, time, or disk space.\n\nIt can store large files in many places, from local hard drives, to a\nlarge number of cloud storage services, including S3, WebDAV,\nand rsync, with a dozen cloud storage providers usable via plugins.\nFiles can be stored encrypted with gpg, so that the cloud storage\nprovider cannot see your data. git-annex keeps track of where each file\nis stored, so it knows how many copies are available, and has many\nfacilities to ensure your data is preserved.\n\ngit-annex can also be used to keep a folder in sync between computers,\nnoticing when files are changed, and automatically committing them\nto git and transferring them to other computers. The git-annex webapp\nmakes it easy to set up and use git-annex this way.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.hslogger or (pkgs.buildPackages.hslogger or (buildToolDepError "hslogger")))
        (hsPkgs.buildPackages.MissingH or (pkgs.buildPackages.MissingH or (buildToolDepError "MissingH")))
        (hsPkgs.buildPackages.unix-compat or (pkgs.buildPackages.unix-compat or (buildToolDepError "unix-compat")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        (hsPkgs.buildPackages.unix or (pkgs.buildPackages.unix or (buildToolDepError "unix")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.exceptions or (pkgs.buildPackages.exceptions or (buildToolDepError "exceptions")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or (buildToolDepError "bytestring")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.IfElse or (pkgs.buildPackages.IfElse or (buildToolDepError "IfElse")))
        (hsPkgs.buildPackages.data-default or (pkgs.buildPackages.data-default or (buildToolDepError "data-default")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      exes = {
        "git-annex" = {
          depends = (((((((((((((((([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."monad-logger" or (buildDepError "monad-logger"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."sandi" or (buildDepError "sandi"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."bloomfilter" or (buildDepError "bloomfilter"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."esqueleto" or (buildDepError "esqueleto"))
            (hsPkgs."persistent-sqlite" or (buildDepError "persistent-sqlite"))
            (hsPkgs."persistent" or (buildDepError "persistent"))
            (hsPkgs."persistent-template" or (buildDepError "persistent-template"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (buildDepError "network-uri"))
              (hsPkgs."network" or (buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network" or (buildDepError "network"))
              ])) ++ (if flags.cryptonite
            then [ (hsPkgs."cryptonite" or (buildDepError "cryptonite")) ]
            else [
              (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
              ])) ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or (buildDepError "Win32"))
              (hsPkgs."Win32-extras" or (buildDepError "Win32-extras"))
              (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
              (hsPkgs."setenv" or (buildDepError "setenv"))
              (hsPkgs."process" or (buildDepError "process"))
              ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optionals (flags.testsuite) [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            ]) ++ (pkgs.lib).optionals (flags.s3) [
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."aws" or (buildDepError "aws"))
            ]) ++ (pkgs.lib).optional (flags.webdav) (hsPkgs."DAV" or (buildDepError "DAV"))) ++ (pkgs.lib).optionals (flags.assistant && !system.isSolaris) [
            (hsPkgs."dns" or (buildDepError "dns"))
            (hsPkgs."mountpoints" or (buildDepError "mountpoints"))
            ]) ++ (pkgs.lib).optionals (flags.assistant) (if system.isLinux
            then [ (hsPkgs."hinotify" or (buildDepError "hinotify")) ]
            else if system.isOsx
              then [ (hsPkgs."hfsevents" or (buildDepError "hfsevents")) ]
              else if system.isWindows
                then [
                  (hsPkgs."Win32-notify" or (buildDepError "Win32-notify"))
                  ]
                else (pkgs.lib).optionals (!system.isSolaris && !system.isLinux) ((pkgs.lib).optional (flags.android) (hsPkgs."hinotify" or (buildDepError "hinotify"))))) ++ (pkgs.lib).optionals (flags.dbus) ((pkgs.lib).optionals (system.isLinux) [
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."fdo-notify" or (buildDepError "fdo-notify"))
            ])) ++ (if flags.android
            then [ (hsPkgs."data-endian" or (buildDepError "data-endian")) ]
            else [
              (hsPkgs."disk-free-space" or (buildDepError "disk-free-space"))
              ])) ++ (pkgs.lib).optionals (flags.webapp) [
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."clientsession" or (buildDepError "clientsession"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            ]) ++ (pkgs.lib).optionals (flags.pairing) [
            (hsPkgs."network-multicast" or (buildDepError "network-multicast"))
            (hsPkgs."network-info" or (buildDepError "network-info"))
            ]) ++ (pkgs.lib).optionals (flags.xmpp) ((pkgs.lib).optionals (!system.isWindows) [
            (hsPkgs."network-protocol-xmpp" or (buildDepError "network-protocol-xmpp"))
            (hsPkgs."gnutls" or (buildDepError "gnutls"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            ])) ++ (pkgs.lib).optional (flags.torrentparser) (hsPkgs."torrent" or (buildDepError "torrent"))) ++ (pkgs.lib).optionals (flags.magicmime) ((pkgs.lib).optional (!system.isWindows) (hsPkgs."magic" or (buildDepError "magic")))) ++ (pkgs.lib).optional (flags.concurrentoutput) (hsPkgs."concurrent-output" or (buildDepError "concurrent-output"))) ++ (pkgs.lib).optionals (flags.benchmark) [
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      };
    }