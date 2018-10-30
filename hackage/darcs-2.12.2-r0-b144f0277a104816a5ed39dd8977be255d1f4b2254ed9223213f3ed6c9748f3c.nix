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
      pkgconfig = false;
      static = false;
      terminfo = true;
      threaded = true;
      executable = true;
      rts = false;
      optimize = true;
      warn-as-error = false;
      libiconv = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "darcs";
        version = "2.12.2";
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
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.regex-compat-tdfa)
          (hsPkgs.regex-applicative)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.parsec)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
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
          (hsPkgs.async)
          (hsPkgs.sandi)
          (hsPkgs.unix-compat)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.mmap)
          (hsPkgs.zlib)
          (hsPkgs.HTTP)
        ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [
            (hsPkgs.unix)
          ])) ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [
            (hsPkgs.network)
          ])) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs.terminfo);
        libs = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (!flags.pkgconfig) (pkgs."curl"));
        pkgconfig = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs.libcurl));
      };
      exes = {
        "darcs" = {
          depends  = [
            (hsPkgs.darcs)
            (hsPkgs.base)
          ];
        };
      };
      tests = {
        "darcs-test" = {
          depends  = [
            (hsPkgs.darcs)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.shelly)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.FindBin)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.zip-archive)
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32);
        };
      };
    };
  }