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
      static = false;
      terminfo = true;
      threaded = true;
      type-witnesses = false;
      library = true;
      color = true;
      mmap = true;
      test = false;
      hpc = false;
      deps-only = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "darcs-beta";
        version = "2.4.99.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "<darcs-users@darcs.net>";
      author = "David Roundy <droundy@darcs.net>, <darcs-users@darcs.net>";
      homepage = "http://darcs.net/";
      url = "";
      synopsis = "a distributed, interactive, smart revision control system";
      description = "Darcs is a free, open source revision control\nsystem. It is:\n\n* Distributed: Every user has access to the full\ncommand set, removing boundaries between server and\nclient or committer and non-committers.\n\n* Interactive: Darcs is easy to learn and efficient to\nuse because it asks you questions in response to\nsimple commands, giving you choices in your work\nflow. You can choose to record one change in a file,\nwhile ignoring another. As you update from upstream,\nyou can review each patch name, even the full \"diff\"\nfor interesting patches.\n\n* Smart: Originally developed by physicist David\nRoundy, darcs is based on a unique algebra of\npatches.\n\nThis smartness lets you respond to changing demands\nin ways that would otherwise not be possible. Learn\nmore about spontaneous branches with darcs.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = pkgs.lib.optionals (!(!flags.library)) ((((([
          (hsPkgs.base)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.html)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.hashed-storage)
          (hsPkgs.tar)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.zlib)
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs.unix-compat)
          (hsPkgs.regex-posix)
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.http) [
          (hsPkgs.network)
          (hsPkgs.HTTP)
        ]) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo));
        libs = pkgs.lib.optionals (!(!flags.library)) (pkgs.lib.optional (flags.curl) (pkgs."curl"));
      };
      exes = {
        "witnesses" = {
          depends  = pkgs.lib.optionals (!(!flags.type-witnesses)) ((([
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.hashed-storage)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ pkgs.lib.optionals (system.isWindows) [
            (hsPkgs.unix-compat)
            (hsPkgs.regex-posix)
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.http) [
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ]);
        };
        "darcs" = {
          depends  = (((([
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.hashed-storage)
            (hsPkgs.tar)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.zlib)
          ] ++ pkgs.lib.optionals (system.isWindows) [
            (hsPkgs.unix-compat)
            (hsPkgs.regex-posix)
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optionals (flags.http) [
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ]) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
          libs = pkgs.lib.optional (flags.curl) (pkgs."curl");
        };
        "unit" = {
          depends  = pkgs.lib.optionals (!(!flags.test)) ((((([
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.haskeline)
            (hsPkgs.text)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.hashed-storage)
            (hsPkgs.random)
            (hsPkgs.zlib)
          ] ++ pkgs.lib.optionals (system.isWindows) [
            (hsPkgs.unix-compat)
            (hsPkgs.regex-posix)
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo)) ++ pkgs.lib.optionals (flags.http) [
            (hsPkgs.network)
            (hsPkgs.HTTP)
          ]);
        };
      };
    };
  }