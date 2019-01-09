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
      ekg = false;
      network-uri = true;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "git-annex"; version = "5.20150205"; };
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
            (hsPkgs.MissingH)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.utf8-string)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.dataenc)
            (hsPkgs.SHA)
            (hsPkgs.process)
            (hsPkgs.json)
            (hsPkgs.base)
            (hsPkgs.monad-control)
            (hsPkgs.exceptions)
            (hsPkgs.transformers)
            (hsPkgs.IfElse)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.bloomfilter)
            (hsPkgs.edit-distance)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.uuid)
            (hsPkgs.random)
            (hsPkgs.dlist)
            (hsPkgs.unix-compat)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.data-default)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.cryptohash)
            ] ++ (if flags.network-uri
            then [ (hsPkgs.network-uri) (hsPkgs.network) ]
            else [ (hsPkgs.network) (hsPkgs.network) ])) ++ (if system.isWindows
            then [
              (hsPkgs.Win32)
              (hsPkgs.Win32-extras)
              (hsPkgs.unix-compat)
              (hsPkgs.setenv)
              ]
            else [ (hsPkgs.unix) ])) ++ (pkgs.lib).optionals (flags.testsuite) [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.optparse-applicative)
            (hsPkgs.crypto-api)
            ]) ++ (if flags.tdfa
            then [ (hsPkgs.regex-tdfa) ]
            else [
              (hsPkgs.regex-compat)
              ])) ++ (pkgs.lib).optionals (flags.s3) [
            (hsPkgs.conduit)
            (hsPkgs.resourcet)
            (hsPkgs.conduit-extra)
            (hsPkgs.aws)
            (hsPkgs.http-client)
            ]) ++ (pkgs.lib).optionals (flags.webdav) [
            (hsPkgs.DAV)
            (hsPkgs.http-client)
            ]) ++ (pkgs.lib).optionals (flags.assistant) (if system.isLinux && flags.inotify
            then [ (hsPkgs.hinotify) ]
            else if system.isOsx
              then [ (hsPkgs.hfsevents) ]
              else if system.isWindows
                then [ (hsPkgs.Win32-notify) ]
                else (pkgs.lib).optionals (!system.isSolaris && !system.isLinux) ((pkgs.lib).optional (flags.android) (hsPkgs.hinotify)))) ++ (pkgs.lib).optionals (system.isLinux) ((pkgs.lib).optional (flags.dbus) (hsPkgs.dbus) ++ (pkgs.lib).optionals (flags.desktopnotify) ((pkgs.lib).optionals (flags.dbus) [
            (hsPkgs.dbus)
            (hsPkgs.fdo-notify)
            ]))) ++ (pkgs.lib).optional (flags.android) (hsPkgs.data-endian)) ++ (pkgs.lib).optionals (flags.webapp) [
            (hsPkgs.yesod)
            (hsPkgs.yesod-default)
            (hsPkgs.yesod-static)
            (hsPkgs.yesod-form)
            (hsPkgs.yesod-core)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            (hsPkgs.blaze-builder)
            (hsPkgs.crypto-api)
            (hsPkgs.hamlet)
            (hsPkgs.clientsession)
            (hsPkgs.template-haskell)
            (hsPkgs.aeson)
            (hsPkgs.path-pieces)
            (hsPkgs.shakespeare)
            ]) ++ (pkgs.lib).optionals (flags.webapp && flags.webapp-secure) [
            (hsPkgs.warp-tls)
            (hsPkgs.securemem)
            (hsPkgs.byteable)
            ]) ++ (pkgs.lib).optionals (flags.pairing) [
            (hsPkgs.network-multicast)
            (hsPkgs.network-info)
            ]) ++ (pkgs.lib).optionals (flags.xmpp && !system.isWindows) [
            (hsPkgs.network-protocol-xmpp)
            (hsPkgs.gnutls)
            (hsPkgs.xml-types)
            ]) ++ (pkgs.lib).optional (flags.dns) (hsPkgs.dns)) ++ (pkgs.lib).optional (flags.feed) (hsPkgs.feed)) ++ (pkgs.lib).optional (flags.quvi) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.tahoe) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.torrentparser) (hsPkgs.torrent)) ++ (pkgs.lib).optional (flags.ekg) (hsPkgs.ekg);
          };
        };
      };
    }