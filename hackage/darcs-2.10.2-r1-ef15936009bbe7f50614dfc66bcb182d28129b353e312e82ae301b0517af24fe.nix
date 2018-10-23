{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      curl = true;
      pkgconfig = false;
      http = true;
      static = false;
      terminfo = true;
      threaded = true;
      executable = true;
      hpc = false;
      rts = false;
      optimize = true;
      warn-as-error = false;
      use-local-data-map-strict = false;
      libiconv = false;
      hashed-storage-diff = false;
      use-time-1point5 = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "darcs";
        version = "2.10.2";
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
      "darcs" = {
        depends  = (((((((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.regex-compat-tdfa)
          (hsPkgs.regex-applicative)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.parsec)
          (hsPkgs.html)
          (hsPkgs.filepath)
          (hsPkgs.haskeline)
          (hsPkgs.cryptohash)
          (hsPkgs.base16-bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.tar)
          (hsPkgs.data-ordlist)
          (hsPkgs.attoparsec)
          (hsPkgs.zip-archive)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.mmap)
          (hsPkgs.zlib)
          (hsPkgs.sandi)
          (hsPkgs.unix-compat)
          (hsPkgs.cryptohash)
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs.unix-compat)
          (hsPkgs.Win32)
        ]) ++ (if flags.use-local-data-map-strict
          then [
            (hsPkgs.containers)
            (hsPkgs.deepseq)
          ]
          else [
            (hsPkgs.containers)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix)) ++ [
          (hsPkgs.text)
        ]) ++ (if flags.use-time-1point5
          then [ (hsPkgs.time) ]
          else [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ])) ++ pkgs.lib.optionals (flags.http) ([
          (hsPkgs.HTTP)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ]))) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo)) ++ pkgs.lib.optional (flags.hashed-storage-diff) (hsPkgs.lcs)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        libs = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (!flags.pkgconfig) (pkgs."curl"));
        pkgconfig = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs.libcurl));
      };
      exes = {
        "darcs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.darcs)
            (hsPkgs.filepath)
            (hsPkgs.regex-compat-tdfa)
          ];
        };
      };
      tests = {
        "darcs-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.darcs)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.html)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.regex-compat-tdfa)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.FindBin)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
          ] ++ [ (hsPkgs.text) ];
        };
        "hashed-storage-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.sandi)
            (hsPkgs.cryptohash)
            (hsPkgs.binary)
            (hsPkgs.zlib)
            (hsPkgs.mmap)
            (hsPkgs.unix-compat)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.process)
            (hsPkgs.zip-archive)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        };
      };
    };
  }