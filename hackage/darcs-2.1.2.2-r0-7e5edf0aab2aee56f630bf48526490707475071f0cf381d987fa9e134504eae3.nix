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
      libwww = true;
      http = true;
      external-bytestring = true;
      external-zlib = true;
      haskeline = false;
      terminfo = true;
      curses = false;
      type-witnesses = false;
      color = true;
      base3 = true;
    };
    package = {
      specVersion = "1.6";
      identifier = { name = "darcs"; version = "2.1.2.2"; };
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
      exes = {
        "darcs" = {
          depends = (((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (if flags.base3
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ pkgs.lib.optionals (!flags.curl) (pkgs.lib.optionals (!flags.libwww) (pkgs.lib.optionals (flags.http) [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          ]))) ++ pkgs.lib.optional (flags.external-bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.external-zlib) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))) ++ pkgs.lib.optional (flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))) ++ pkgs.lib.optional (flags.haskeline) (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"));
          libs = (pkgs.lib.optional (flags.curl) (pkgs."curl" or (errorHandler.sysDepError "curl")) ++ pkgs.lib.optional (!flags.external-zlib) (pkgs."z" or (errorHandler.sysDepError "z"))) ++ pkgs.lib.optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          pkgconfig = pkgs.lib.optionals (flags.curl) (pkgs.lib.optional (flags.curl-pipelining) (pkgconfPkgs."libcurl" or (errorHandler.pkgConfDepError "libcurl")));
          build-tools = pkgs.lib.optionals (!flags.curl) (pkgs.lib.optional (flags.libwww) (hsPkgs.buildPackages.libwww-config.components.exes.libwww-config or (pkgs.buildPackages.libwww-config or (errorHandler.buildToolDepError "libwww-config:libwww-config"))));
          buildable = true;
        };
      };
    };
  }