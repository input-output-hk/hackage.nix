{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
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
      dbus = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "git-annex";
          version = "6.20171109";
        };
        license = "GPL-3.0-only";
        copyright = "2010-2017 Joey Hess";
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
          git-annex = {
            depends  = (((((((((((((([
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.containers
              hsPkgs.exceptions
              hsPkgs.QuickCheck
              hsPkgs.stm
              hsPkgs.mtl
              hsPkgs.uuid
              hsPkgs.process
              hsPkgs.data-default
              hsPkgs.case-insensitive
              hsPkgs.random
              hsPkgs.dlist
              hsPkgs.unix-compat
              hsPkgs.SafeSemaphore
              hsPkgs.async
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.IfElse
              hsPkgs.hslogger
              hsPkgs.monad-logger
              hsPkgs.free
              hsPkgs.utf8-string
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.sandi
              hsPkgs.monad-control
              hsPkgs.transformers
              hsPkgs.bloomfilter
              hsPkgs.edit-distance
              hsPkgs.resourcet
              hsPkgs.http-client
              hsPkgs.http-types
              hsPkgs.http-conduit
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.esqueleto
              hsPkgs.persistent-sqlite
              hsPkgs.persistent
              hsPkgs.persistent-template
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.feed
              hsPkgs.regex-tdfa
              hsPkgs.socks
              hsPkgs.byteable
              hsPkgs.stm-chans
              hsPkgs.securemem
              hsPkgs.crypto-api
              hsPkgs.cryptonite
              hsPkgs.memory
              hsPkgs.split
            ] ++ (if _flags.network-uri
              then [
                hsPkgs.network-uri
                hsPkgs.network
              ]
              else [
                hsPkgs.network
                hsPkgs.network
              ])) ++ (if system.isWindows
              then [
                hsPkgs.Win32
                hsPkgs.Win32-extras
                hsPkgs.unix-compat
                hsPkgs.setenv
                hsPkgs.process
              ]
              else [
                hsPkgs.unix
              ])) ++ pkgs.lib.optionals _flags.testsuite [
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-rerun
            ]) ++ pkgs.lib.optionals _flags.s3 [
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.aws
            ]) ++ pkgs.lib.optional _flags.webdav hsPkgs.DAV) ++ pkgs.lib.optionals (_flags.assistant && !system.isSolaris) [
              hsPkgs.dns
              hsPkgs.mountpoints
            ]) ++ (if _flags.assistant && (system.isLinux || _flags.android)
              then [ hsPkgs.hinotify ]
              else if system.isOsx
                then [ hsPkgs.hfsevents ]
                else pkgs.lib.optional system.isWindows hsPkgs.Win32-notify)) ++ pkgs.lib.optionals (_flags.dbus && system.isLinux) [
              hsPkgs.dbus
              hsPkgs.fdo-notify
            ]) ++ (if _flags.android
              then [ hsPkgs.data-endian ]
              else [
                hsPkgs.disk-free-space
              ])) ++ pkgs.lib.optionals _flags.webapp [
              hsPkgs.yesod
              hsPkgs.yesod-default
              hsPkgs.yesod-static
              hsPkgs.yesod-form
              hsPkgs.yesod-core
              hsPkgs.path-pieces
              hsPkgs.warp
              hsPkgs.warp-tls
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.blaze-builder
              hsPkgs.clientsession
              hsPkgs.template-haskell
              hsPkgs.shakespeare
            ]) ++ pkgs.lib.optionals _flags.pairing [
              hsPkgs.network-multicast
              hsPkgs.network-info
            ]) ++ pkgs.lib.optional _flags.torrentparser hsPkgs.torrent) ++ pkgs.lib.optional (_flags.magicmime && !system.isWindows) hsPkgs.magic) ++ pkgs.lib.optional _flags.concurrentoutput hsPkgs.concurrent-output) ++ pkgs.lib.optionals _flags.benchmark [
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }