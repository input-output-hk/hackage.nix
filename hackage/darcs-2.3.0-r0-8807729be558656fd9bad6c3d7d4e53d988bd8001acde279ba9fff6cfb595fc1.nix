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
      curl-pipelining = false;
      http = true;
      bytestring = true;
      zlib = true;
      utf8-string = true;
      terminfo = true;
      type-witnesses = false;
      color = true;
      mmap = true;
      test = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs"; version = "2.3.0"; };
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
        depends = (((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
        libs = (pkgs.lib).optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z"));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or (errorHandler.pkgConfDepError "libcurl"))));
        buildable = if !flags.curl && !flags.http then false else true;
        };
      exes = {
        "witnesses" = {
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z"));
          buildable = if !flags.type-witnesses then false else true;
          };
        "darcs" = {
          depends = (((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."hashed-storage" or (errorHandler.buildDepError "hashed-storage"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optionals (flags.http) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          libs = ((pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z")) ++ (pkgs.lib).optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl"))) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z"));
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or (errorHandler.pkgConfDepError "libcurl"))));
          buildable = if !flags.curl && !flags.http then false else true;
          };
        "unit" = {
          depends = ((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optionals (!(!flags.test)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"));
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or (errorHandler.sysDepError "z"));
          buildable = if !flags.test then false else true;
          };
        };
      };
    }