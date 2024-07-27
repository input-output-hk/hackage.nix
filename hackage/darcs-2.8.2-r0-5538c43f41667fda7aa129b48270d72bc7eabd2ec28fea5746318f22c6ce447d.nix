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
    };
    package = {
      specVersion = "1.8";
      identifier = { name = "darcs"; version = "2.8.2"; };
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
        depends = pkgs.lib.optionals (!!flags.library) (((((([
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ] ++ pkgs.lib.optionals (system.isWindows) [
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
        ]) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optionals (flags.http) [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
        ]) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo")));
        libs = pkgs.lib.optionals (!!flags.library) (pkgs.lib.optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl")));
        build-tools = pkgs.lib.optional (!!flags.library) (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")));
        buildable = if !flags.library
          then false
          else if !flags.curl && !flags.http then false else true;
      };
      exes = {
        "darcs" = {
          depends = ((((([
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ pkgs.lib.optionals (system.isWindows) [
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ]) ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optionals (flags.http) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          libs = pkgs.lib.optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
          buildable = (if !flags.executable
            then false
            else true) && (if !flags.curl && !flags.http then false else true);
        };
        "darcs-test" = {
          depends = pkgs.lib.optionals (!!flags.test) (((((([
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."cmdlib" or (errorHandler.buildDepError "cmdlib"))
            (hsPkgs."shellish" or (errorHandler.buildDepError "shellish"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ pkgs.lib.optionals (system.isWindows) [
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          ]) ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ pkgs.lib.optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))) ++ pkgs.lib.optionals (flags.http) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]);
          libs = pkgs.lib.optionals (!!flags.test) (pkgs.lib.optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl")));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.ghc.components.exes.ghc or (pkgs.pkgsBuildBuild.ghc or (errorHandler.buildToolDepError "ghc:ghc")))
          ];
          buildable = if !flags.test then false else true;
        };
      };
    };
  }