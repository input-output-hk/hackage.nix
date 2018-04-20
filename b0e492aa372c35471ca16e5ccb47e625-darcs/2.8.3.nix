{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      curl = true;
      http = true;
      static = false;
      terminfo = true;
      threaded = true;
      library = true;
      executable = true;
      color = true;
      mmap = true;
      hpc = false;
      test = false;
      optimize = true;
      warn-as-error = false;
      force-char8-encoding = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "darcs";
          version = "2.8.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "<darcs-devel@darcs.net>";
        author = "David Roundy <droundy@darcs.net>, <darcs-devel@darcs.net>";
        homepage = "http://darcs.net/";
        url = "";
        synopsis = "a distributed, interactive, smart revision control system";
        description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Every user has access to the full\ncommand set, removing boundaries between server and\nclient or committer and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to\nuse because it asks you questions in response to\nsimple commands, giving you choices in your work\nflow. You can choose to record one change in a file,\nwhile ignoring another. As you update from upstream,\nyou can review each patch name, even the full \"diff\"\nfor interesting patches.\n\n* Smart: Originally developed by physicist David\nRoundy, darcs is based on a unique algebra of\npatches.\n\nThis smartness lets you respond to changing demands\nin ways that would otherwise not be possible. Learn\nmore about spontaneous branches with darcs.";
        buildType = "Custom";
      };
      components = {
        darcs = {
          depends  = pkgs.lib.optionals (!(!_flags.library)) (((((([
            hsPkgs.extensible-exceptions
            hsPkgs.regex-compat
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.html
            hsPkgs.filepath
            hsPkgs.haskeline
            hsPkgs.hashed-storage
            hsPkgs.vector
            hsPkgs.tar
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.old-time
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.random
            hsPkgs.zlib
          ] ++ pkgs.lib.optionals system.isWindows [
            hsPkgs.unix-compat
            hsPkgs.regex-posix
          ]) ++ [
            hsPkgs.base
          ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optionals _flags.http [
            hsPkgs.network
            hsPkgs.HTTP
          ]) ++ pkgs.lib.optional (_flags.mmap && !system.isWindows) hsPkgs.mmap) ++ pkgs.lib.optional (_flags.terminfo && !system.isWindows) hsPkgs.terminfo);
          libs = pkgs.lib.optional (!(!_flags.library) && _flags.curl) pkgs.curl;
        };
        exes = {
          darcs = {
            depends  = ((((([
              hsPkgs.extensible-exceptions
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.html
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.hashed-storage
              hsPkgs.vector
              hsPkgs.tar
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.random
              hsPkgs.zlib
            ] ++ pkgs.lib.optionals system.isWindows [
              hsPkgs.unix-compat
              hsPkgs.regex-posix
            ]) ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optionals _flags.http [
              hsPkgs.network
              hsPkgs.HTTP
            ]) ++ pkgs.lib.optional (_flags.mmap && !system.isWindows) hsPkgs.mmap) ++ pkgs.lib.optional (_flags.terminfo && !system.isWindows) hsPkgs.terminfo;
            libs = pkgs.lib.optional _flags.curl pkgs.curl;
          };
          darcs-test = {
            depends  = pkgs.lib.optionals (!(!_flags.test)) (((((([
              hsPkgs.extensible-exceptions
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.html
              hsPkgs.filepath
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.cmdlib
              hsPkgs.shellish
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.bytestring
              hsPkgs.haskeline
              hsPkgs.text
              hsPkgs.old-time
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.hashed-storage
              hsPkgs.vector
              hsPkgs.tar
              hsPkgs.random
              hsPkgs.zlib
            ] ++ pkgs.lib.optionals system.isWindows [
              hsPkgs.unix-compat
              hsPkgs.regex-posix
            ]) ++ [
              hsPkgs.base
            ]) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix) ++ pkgs.lib.optional (_flags.mmap && !system.isWindows) hsPkgs.mmap) ++ pkgs.lib.optional (_flags.terminfo && !system.isWindows) hsPkgs.terminfo) ++ pkgs.lib.optionals _flags.http [
              hsPkgs.network
              hsPkgs.HTTP
            ]);
            libs = pkgs.lib.optional (!(!_flags.test) && _flags.curl) pkgs.curl;
          };
        };
      };
    }