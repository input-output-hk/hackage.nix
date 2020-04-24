{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      base3 = true;
      test = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs-beta"; version = "2.2.98.2"; };
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
        depends = ((((((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."hashed-storage" or ((hsPkgs.pkgs-errors).buildDepError "hashed-storage"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if flags.base3
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.http) [
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
        libs = (pkgs.lib).optional (flags.curl) (pkgs."curl" or ((hsPkgs.pkgs-errors).sysDepError "curl")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or ((hsPkgs.pkgs-errors).pkgConfDepError "libcurl"))));
        buildable = if !flags.curl && !flags.http then false else true;
        };
      exes = {
        "witnesses" = {
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
          buildable = if !flags.type-witnesses then false else true;
          };
        "darcs" = {
          depends = ((((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."hashed-storage" or ((hsPkgs.pkgs-errors).buildDepError "hashed-storage"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if flags.base3
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ])) ++ (pkgs.lib).optionals (flags.http) [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ]) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.utf8-string) (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
          libs = ((pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ++ (pkgs.lib).optional (flags.curl) (pkgs."curl" or ((hsPkgs.pkgs-errors).sysDepError "curl"))) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or ((hsPkgs.pkgs-errors).pkgConfDepError "libcurl"))));
          buildable = if !flags.curl && !flags.http then false else true;
          };
        "unit" = {
          depends = ((((((pkgs.lib).optionals (!(!flags.test)) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if flags.base3
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ])) ++ (pkgs.lib).optional (flags.mmap && !system.isWindows) (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))) ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.zlib) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"));
          libs = (pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ++ (pkgs.lib).optional (!flags.zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
          buildable = if !flags.test then false else true;
          };
        };
      };
    }