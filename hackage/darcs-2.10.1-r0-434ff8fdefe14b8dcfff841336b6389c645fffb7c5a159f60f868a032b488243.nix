{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
      identifier = { name = "darcs"; version = "2.10.1"; };
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
        depends = ((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
          (hsPkgs."regex-applicative" or (errorHandler.buildDepError "regex-applicative"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."data-ordlist" or (errorHandler.buildDepError "data-ordlist"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
        ]) ++ (if flags.use-local-data-map-strict
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ]
          else [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if flags.use-time-1point5
          then [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ])) ++ pkgs.lib.optionals (flags.http) ([
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
        ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ]))) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))) ++ pkgs.lib.optional (flags.hashed-storage-diff) (hsPkgs."lcs" or (errorHandler.buildDepError "lcs"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        libs = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (!flags.pkgconfig) (pkgs."curl" or (errorHandler.sysDepError "curl")));
        pkgconfig = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (flags.pkgconfig) (pkgconfPkgs."libcurl" or (errorHandler.pkgConfDepError "libcurl")));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
        ];
        buildable = if !flags.curl && !flags.http then false else true;
      };
      exes = {
        "darcs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
          buildable = if !flags.executable then false else true;
        };
      };
      tests = {
        "darcs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."darcs" or (errorHandler.buildDepError "darcs"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
          buildable = true;
        };
        "hashed-storage-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          buildable = true;
        };
      };
    };
  }