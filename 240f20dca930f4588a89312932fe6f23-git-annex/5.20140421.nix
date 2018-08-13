{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
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
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "git-annex";
        version = "5.20140421";
      };
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
          depends  = ((((((((((((((((([
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.network)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.dataenc)
            (hsPkgs.SHA)
            (hsPkgs.process)
            (hsPkgs.json)
            (hsPkgs.base)
            (hsPkgs.monad-control)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.IfElse)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.bloomfilter)
            (hsPkgs.edit-distance)
            (hsPkgs.process)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.uuid)
            (hsPkgs.random)
            (hsPkgs.dlist)
            (hsPkgs.unix-compat)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.data-default)
            (hsPkgs.case-insensitive)
          ] ++ (if system.isWindows
            then [
              (hsPkgs.Win32)
              (hsPkgs.Win32-extras)
            ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optionals (_flags.testsuite) [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.optparse-applicative)
          ]) ++ (if _flags.tdfa
            then [ (hsPkgs.regex-tdfa) ]
            else [
              (hsPkgs.regex-compat)
            ])) ++ pkgs.lib.optional (_flags.cryptohash) (hsPkgs.cryptohash)) ++ pkgs.lib.optional (_flags.s3) (hsPkgs.hS3)) ++ pkgs.lib.optionals (_flags.webdav) [
            (hsPkgs.DAV)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
          ]) ++ pkgs.lib.optionals (_flags.assistant) (if system.isLinux && _flags.inotify
            then [ (hsPkgs.hinotify) ]
            else if system.isOsx
              then [ (hsPkgs.hfsevents) ]
              else if system.isWindows
                then [ (hsPkgs.Win32-notify) ]
                else pkgs.lib.optionals (!system.isSolaris && !system.isLinux) (pkgs.lib.optional (_flags.android) (hsPkgs.hinotify)))) ++ pkgs.lib.optionals (system.isLinux) (pkgs.lib.optional (_flags.dbus) (hsPkgs.dbus) ++ pkgs.lib.optionals (_flags.desktopnotify) (pkgs.lib.optionals (_flags.dbus) [
            (hsPkgs.dbus)
            (hsPkgs.fdo-notify)
          ]))) ++ pkgs.lib.optional (_flags.android) (hsPkgs.data-endian)) ++ pkgs.lib.optionals (_flags.webapp) [
            (hsPkgs.yesod)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-core)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-logger)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.blaze-builder)
            (hsPkgs.crypto-api)
            (hsPkgs.hamlet)
            (hsPkgs.clientsession)
            (hsPkgs.template-haskell)
            (hsPkgs.data-default)
            (hsPkgs.aeson)
            (hsPkgs.network-conduit)
            (hsPkgs.shakespeare)
          ]) ++ pkgs.lib.optionals (_flags.webapp && _flags.webapp-secure) [
            (hsPkgs.warp-tls)
            (hsPkgs.securemem)
            (hsPkgs.byteable)
          ]) ++ pkgs.lib.optionals (_flags.pairing) [
            (hsPkgs.network-multicast)
            (hsPkgs.network-info)
          ]) ++ pkgs.lib.optionals (_flags.xmpp && !system.isWindows) [
            (hsPkgs.network-protocol-xmpp)
            (hsPkgs.gnutls)
            (hsPkgs.xml-types)
          ]) ++ pkgs.lib.optional (_flags.dns) (hsPkgs.dns)) ++ pkgs.lib.optional (_flags.feed) (hsPkgs.feed)) ++ pkgs.lib.optional (_flags.quvi) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.tahoe) (hsPkgs.aeson)) ++ pkgs.lib.optional (_flags.ekg) (hsPkgs.ekg);
        };
      };
    };
  }