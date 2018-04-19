{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
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
      feed = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "git-annex";
          version = "4.20130815";
        };
        license = "GPL-3.0-only";
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
          git-annex = {
            depends  = ((((((((((((([
              hsPkgs.MissingH
              hsPkgs.hslogger
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.utf8-string
              hsPkgs.network
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.HTTP
              hsPkgs.extensible-exceptions
              hsPkgs.dataenc
              hsPkgs.SHA
              hsPkgs.process
              hsPkgs.json
              hsPkgs.base
              hsPkgs.monad-control
              hsPkgs.MonadCatchIO-transformers
              hsPkgs.IfElse
              hsPkgs.text
              hsPkgs.QuickCheck
              hsPkgs.bloomfilter
              hsPkgs.edit-distance
              hsPkgs.process
              hsPkgs.SafeSemaphore
              hsPkgs.uuid
              hsPkgs.random
              hsPkgs.dlist
              hsPkgs.unix-compat
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional _flags.testsuite hsPkgs.HUnit) ++ pkgs.lib.optional _flags.tdfa hsPkgs.regex-tdfa) ++ pkgs.lib.optional _flags.s3 hsPkgs.hS3) ++ pkgs.lib.optionals _flags.webdav [
              hsPkgs.DAV
              hsPkgs.http-conduit
              hsPkgs.xml-conduit
              hsPkgs.http-types
            ]) ++ pkgs.lib.optionals (_flags.assistant && !system.isWindows && !system.isSolaris) [
              hsPkgs.async
              hsPkgs.stm
            ]) ++ pkgs.lib.optional _flags.android hsPkgs.data-endian) ++ (if _flags.assistant && (system.isLinux && _flags.inotify)
              then [ hsPkgs.hinotify ]
              else pkgs.lib.optional system.isOsx hsPkgs.hfsevents)) ++ pkgs.lib.optional (system.isLinux && _flags.dbus) hsPkgs.dbus) ++ pkgs.lib.optionals _flags.webapp [
              hsPkgs.yesod
              hsPkgs.yesod-default
              hsPkgs.yesod-static
              hsPkgs.yesod-form
              hsPkgs.yesod-core
              hsPkgs.case-insensitive
              hsPkgs.http-types
              hsPkgs.transformers
              hsPkgs.wai
              hsPkgs.wai-logger
              hsPkgs.warp
              hsPkgs.blaze-builder
              hsPkgs.crypto-api
              hsPkgs.hamlet
              hsPkgs.clientsession
              hsPkgs.aeson
              hsPkgs.template-haskell
              hsPkgs.data-default
            ]) ++ pkgs.lib.optionals _flags.pairing [
              hsPkgs.network-multicast
              hsPkgs.network-info
            ]) ++ pkgs.lib.optionals _flags.xmpp [
              hsPkgs.network-protocol-xmpp
              hsPkgs.gnutls
              hsPkgs.xml-types
            ]) ++ pkgs.lib.optional _flags.dns hsPkgs.dns) ++ pkgs.lib.optional _flags.feed hsPkgs.feed;
          };
        };
      };
    }