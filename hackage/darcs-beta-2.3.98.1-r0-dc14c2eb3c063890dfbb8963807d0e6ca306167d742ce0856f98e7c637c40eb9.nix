{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      curl = true;
      curl-pipelining = false;
      http = true;
      static = false;
      terminfo = true;
      threaded = true;
      type-witnesses = false;
      color = true;
      mmap = true;
      test = false;
      hpc = false;
      deps-only = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs-beta"; version = "2.3.98.1"; };
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
        depends = ((([
          (hsPkgs.base)
          (hsPkgs.regex-compat)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.html)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.hashed-storage)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.zlib)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs.network)
          (hsPkgs.HTTP)
          ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
        libs = (pkgs.lib).optional (flags.curl) (pkgs."curl");
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl")));
        };
      exes = {
        "witnesses" = {};
        "darcs" = {
          depends = ((([
            (hsPkgs.base)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.html)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.hashed-storage)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.zlib)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optionals (flags.http) [
            (hsPkgs.network)
            (hsPkgs.HTTP)
            ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
          libs = (pkgs.lib).optional (flags.curl) (pkgs."curl");
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl")));
          };
        "unit" = {
          depends = ((([
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.random)
            (hsPkgs.zlib)
            ] ++ (pkgs.lib).optionals (!(!flags.test)) [
            (hsPkgs.base)
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
            ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs.mmap)) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
          };
        };
      };
    }