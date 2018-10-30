{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
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
      identifier = {
        name = "git-annex";
        version = "6.20160808";
      };
      license = "GPL-3.0-only";
      copyright = "2010-2016 Joey Hess";
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
          depends  = (((((((((((((((([
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.QuickCheck)
            (hsPkgs.stm)
            (hsPkgs.mtl)
            (hsPkgs.uuid)
            (hsPkgs.process)
            (hsPkgs.data-default)
            (hsPkgs.case-insensitive)
            (hsPkgs.random)
            (hsPkgs.dlist)
            (hsPkgs.unix-compat)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.IfElse)
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.monad-logger)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.sandi)
            (hsPkgs.monad-control)
            (hsPkgs.transformers)
            (hsPkgs.bloomfilter)
            (hsPkgs.edit-distance)
            (hsPkgs.resourcet)
            (hsPkgs.http-conduit)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.esqueleto)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.feed)
            (hsPkgs.regex-tdfa)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [
              (hsPkgs.network)
              (hsPkgs.network)
            ])) ++ (if flags.cryptonite
            then [ (hsPkgs.cryptonite) ]
            else [
              (hsPkgs.cryptohash)
            ])) ++ (if system.isWindows
            then [
              (hsPkgs.Win32)
              (hsPkgs.Win32-extras)
              (hsPkgs.unix-compat)
              (hsPkgs.setenv)
              (hsPkgs.process)
            ]
            else [
              (hsPkgs.unix)
            ])) ++ pkgs.lib.optionals (flags.testsuite) [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.crypto-api)
          ]) ++ pkgs.lib.optionals (flags.s3) [
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.aws)
          ]) ++ pkgs.lib.optional (flags.webdav) (hsPkgs.DAV)) ++ pkgs.lib.optionals (flags.assistant && !system.isSolaris) [
            (hsPkgs.dns)
            (hsPkgs.mountpoints)
          ]) ++ pkgs.lib.optionals (flags.assistant) (if system.isLinux
            then [ (hsPkgs.hinotify) ]
            else if system.isOsx
              then [ (hsPkgs.hfsevents) ]
              else if system.isWindows
                then [ (hsPkgs.Win32-notify) ]
                else pkgs.lib.optionals (!system.isSolaris && !system.isLinux) (pkgs.lib.optional (flags.android) (hsPkgs.hinotify)))) ++ pkgs.lib.optionals (flags.dbus) (pkgs.lib.optionals (system.isLinux) [
            (hsPkgs.dbus)
            (hsPkgs.fdo-notify)
          ])) ++ (if flags.android
            then [ (hsPkgs.data-endian) ]
            else [
              (hsPkgs.disk-free-space)
            ])) ++ pkgs.lib.optionals (flags.webapp) [
            (hsPkgs.yesod)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-core)
            (hsPkgs.path-pieces)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.blaze-builder)
            (hsPkgs.crypto-api)
            (hsPkgs.clientsession)
            (hsPkgs.template-haskell)
            (hsPkgs.shakespeare)
            (hsPkgs.securemem)
            (hsPkgs.byteable)
          ]) ++ pkgs.lib.optionals (flags.pairing) [
            (hsPkgs.network-multicast)
            (hsPkgs.network-info)
          ]) ++ pkgs.lib.optionals (flags.xmpp) (pkgs.lib.optionals (!system.isWindows) [
            (hsPkgs.network-protocol-xmpp)
            (hsPkgs.gnutls)
            (hsPkgs.xml-types)
          ])) ++ pkgs.lib.optional (flags.torrentparser) (hsPkgs.torrent)) ++ pkgs.lib.optionals (flags.magicmime) (pkgs.lib.optional (!system.isWindows) (hsPkgs.magic))) ++ pkgs.lib.optional (flags.concurrentoutput) (hsPkgs.concurrent-output)) ++ pkgs.lib.optionals (flags.benchmark) [
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }