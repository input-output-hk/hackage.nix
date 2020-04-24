{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      curl = true;
      curl-pipelining = false;
      libwww = true;
      http = true;
      external-bytestring = true;
      external-zlib = false;
      haskeline = false;
      terminfo = true;
      curses = false;
      type-witnesses = false;
      color = true;
      base3 = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs"; version = "2.1.99.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
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
            ])) ++ (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optionals (!flags.libwww) ((pkgs.lib).optionals (flags.http) [
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ]))) ++ (pkgs.lib).optional (flags.external-bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.external-zlib) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"))) ++ (pkgs.lib).optional (flags.haskeline) (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"));
        libs = ((pkgs.lib).optional (flags.curl) (pkgs."curl" or ((hsPkgs.pkgs-errors).sysDepError "curl")) ++ (pkgs.lib).optional (!flags.external-zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))) ++ (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
        pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or ((hsPkgs.pkgs-errors).pkgConfDepError "libcurl"))));
        build-tools = (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optional (flags.libwww) (hsPkgs.buildPackages.libwww-config or (pkgs.buildPackages.libwww-config or ((hsPkgs.pkgs-errors).buildToolDepError "libwww-config"))));
        buildable = true;
        };
      exes = {
        "darcs" = {
          depends = (((((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
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
              ])) ++ (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optionals (!flags.libwww) ((pkgs.lib).optionals (flags.http) [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ]))) ++ (pkgs.lib).optional (flags.external-bytestring) (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.external-zlib) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))) ++ (pkgs.lib).optional (flags.terminfo && !system.isWindows) (hsPkgs."terminfo" or ((hsPkgs.pkgs-errors).buildDepError "terminfo"))) ++ (pkgs.lib).optional (flags.haskeline && !system.isWindows) (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"));
          libs = (((pkgs.lib).optional (!flags.external-zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ++ (pkgs.lib).optional (flags.curl) (pkgs."curl" or ((hsPkgs.pkgs-errors).sysDepError "curl"))) ++ (pkgs.lib).optional (!flags.external-zlib) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))) ++ (pkgs.lib).optional (flags.curses) (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"));
          pkgconfig = (pkgs.lib).optionals (flags.curl) ((pkgs.lib).optionals (flags.curl-pipelining) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libcurl" or ((hsPkgs.pkgs-errors).pkgConfDepError "libcurl"))));
          build-tools = (pkgs.lib).optionals (!flags.curl) ((pkgs.lib).optional (flags.libwww) (hsPkgs.buildPackages.libwww-config or (pkgs.buildPackages.libwww-config or ((hsPkgs.pkgs-errors).buildToolDepError "libwww-config"))));
          buildable = true;
          };
        };
      };
    }