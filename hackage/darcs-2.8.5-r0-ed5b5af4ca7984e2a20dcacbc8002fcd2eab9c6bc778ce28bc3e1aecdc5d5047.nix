{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      curl = true;
      http = true;
      network-uri = true;
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
      libiconv = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "darcs";
        version = "2.8.5";
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
      "library" = {
        depends = pkgs.lib.optionals (!(!flags.library)) ((((((([
          (hsPkgs.extensible-exceptions)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.html)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.hashed-storage)
          (hsPkgs.vector)
          (hsPkgs.tar)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.zlib)
        ] ++ (if system.isWindows
          then [
            (hsPkgs.unix-compat)
            (hsPkgs.Win32)
            (hsPkgs.regex-posix)
          ]
          else [
            (hsPkgs.utf8-string)
          ])) ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.0") (hsPkgs.haskeline)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.http) ([
          (hsPkgs.HTTP)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network)
            (hsPkgs.network-uri)
          ]
          else [
            (hsPkgs.network)
            (hsPkgs.network)
          ]))) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo));
        libs = pkgs.lib.optionals (!(!flags.library)) (pkgs.lib.optional (flags.curl) (pkgs."curl"));
      };
      exes = {
        "darcs" = {
          depends = (((((([
            (hsPkgs.extensible-exceptions)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.hashed-storage)
            (hsPkgs.vector)
            (hsPkgs.tar)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.zlib)
          ] ++ (if system.isWindows
            then [
              (hsPkgs.unix-compat)
              (hsPkgs.Win32)
              (hsPkgs.regex-posix)
            ]
            else [
              (hsPkgs.utf8-string)
            ])) ++ [
            (hsPkgs.base)
          ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.0") (hsPkgs.haskeline)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.http) ([
            (hsPkgs.HTTP)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network)
              (hsPkgs.network-uri)
            ]
            else [
              (hsPkgs.network)
              (hsPkgs.network)
            ]))) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
          libs = pkgs.lib.optional (flags.curl) (pkgs."curl");
        };
        "darcs-test" = {
          depends = pkgs.lib.optionals (!(!flags.test)) ((((((([
            (hsPkgs.extensible-exceptions)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.FindBin)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.cmdlib)
            (hsPkgs.shellish)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.bytestring)
            (hsPkgs.haskeline)
            (hsPkgs.text)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.hashed-storage)
            (hsPkgs.vector)
            (hsPkgs.tar)
            (hsPkgs.random)
            (hsPkgs.zlib)
          ] ++ (if system.isWindows
            then [
              (hsPkgs.unix-compat)
              (hsPkgs.Win32)
              (hsPkgs.regex-posix)
            ]
            else [
              (hsPkgs.utf8-string)
            ])) ++ [
            (hsPkgs.base)
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.0") (hsPkgs.haskeline)) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo)) ++ pkgs.lib.optionals (flags.http) ([
            (hsPkgs.HTTP)
          ] ++ (if flags.network-uri
            then [
              (hsPkgs.network)
              (hsPkgs.network-uri)
            ]
            else [
              (hsPkgs.network)
              (hsPkgs.network)
            ])));
          libs = pkgs.lib.optionals (!(!flags.test)) (pkgs.lib.optional (flags.curl) (pkgs."curl"));
        };
      };
    };
  }