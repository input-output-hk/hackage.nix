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
      identifier = { name = "git-annex"; version = "5.20140517"; };
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
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."dataenc" or (buildDepError "dataenc"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."IfElse" or (buildDepError "IfElse"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."bloomfilter" or (buildDepError "bloomfilter"))
            (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
            (hsPkgs."uuid" or (buildDepError "uuid"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."dlist" or (buildDepError "dlist"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            ] ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or (buildDepError "Win32"))
              (hsPkgs."Win32-extras" or (buildDepError "Win32-extras"))
              ]
            else [
              (hsPkgs."unix" or (buildDepError "unix"))
              ])) ++ (pkgs.lib).optionals (flags.testsuite) [
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ]) ++ (if flags.tdfa
            then [ (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa")) ]
            else [
              (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
              ])) ++ (pkgs.lib).optional (flags.cryptohash) (hsPkgs."cryptohash" or (buildDepError "cryptohash"))) ++ (pkgs.lib).optional (flags.s3) (hsPkgs."hS3" or (buildDepError "hS3"))) ++ (pkgs.lib).optionals (flags.webdav) [
            (hsPkgs."DAV" or (buildDepError "DAV"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            ]) ++ (pkgs.lib).optionals (flags.assistant) (if system.isLinux && flags.inotify
            then [ (hsPkgs."hinotify" or (buildDepError "hinotify")) ]
            else if system.isOsx
              then [ (hsPkgs."hfsevents" or (buildDepError "hfsevents")) ]
              else if system.isWindows
                then [
                  (hsPkgs."Win32-notify" or (buildDepError "Win32-notify"))
                  ]
                else (pkgs.lib).optionals (!system.isSolaris && !system.isLinux) ((pkgs.lib).optional (flags.android) (hsPkgs."hinotify" or (buildDepError "hinotify"))))) ++ (pkgs.lib).optionals (system.isLinux) ((pkgs.lib).optional (flags.dbus) (hsPkgs."dbus" or (buildDepError "dbus")) ++ (pkgs.lib).optionals (flags.desktopnotify) ((pkgs.lib).optionals (flags.dbus) [
            (hsPkgs."dbus" or (buildDepError "dbus"))
            (hsPkgs."fdo-notify" or (buildDepError "fdo-notify"))
            ]))) ++ (pkgs.lib).optional (flags.android) (hsPkgs."data-endian" or (buildDepError "data-endian"))) ++ (pkgs.lib).optionals (flags.webapp) [
            (hsPkgs."yesod" or (buildDepError "yesod"))
            (hsPkgs."yesod-default" or (buildDepError "yesod-default"))
            (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
            (hsPkgs."yesod-form" or (buildDepError "yesod-form"))
            (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."hamlet" or (buildDepError "hamlet"))
            (hsPkgs."clientsession" or (buildDepError "clientsession"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            ]) ++ (pkgs.lib).optionals (flags.webapp && flags.webapp-secure) [
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            ]) ++ (pkgs.lib).optionals (flags.pairing) [
            (hsPkgs."network-multicast" or (buildDepError "network-multicast"))
            (hsPkgs."network-info" or (buildDepError "network-info"))
            ]) ++ (pkgs.lib).optionals (flags.xmpp && !system.isWindows) [
            (hsPkgs."network-protocol-xmpp" or (buildDepError "network-protocol-xmpp"))
            (hsPkgs."gnutls" or (buildDepError "gnutls"))
            (hsPkgs."xml-types" or (buildDepError "xml-types"))
            ]) ++ (pkgs.lib).optional (flags.dns) (hsPkgs."dns" or (buildDepError "dns"))) ++ (pkgs.lib).optional (flags.feed) (hsPkgs."feed" or (buildDepError "feed"))) ++ (pkgs.lib).optional (flags.quvi) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.tahoe) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs."ekg" or (buildDepError "ekg"));
          };
        };
      };
    }