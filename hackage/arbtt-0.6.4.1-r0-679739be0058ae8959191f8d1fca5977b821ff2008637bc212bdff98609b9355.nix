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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "arbtt"; version = "0.6.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "Joachim Breitner 2009-2010";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "http://www.joachim-breitner.de/projects#arbtt";
      url = "";
      synopsis = "Automatic Rule-Based Time Tracker";
      description = "arbtt is a background daemon that stores which windows are open, which one\nhas the focus and how long since your last action (and possbly more sources\nlater), and stores this. It is also a program that will, based on\nexpressive rules you specify, derive what you were doing, and what for.\n\nWARNING: The log file might contain very sensitive private data. Make sure\nyou understand the consequences of a full-time logger and be careful with this\ndata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "arbtt-capture" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            ] ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ]);
          libs = if system.isWindows
            then [ (pkgs."psapi" or (errorHandler.sysDepError "psapi")) ]
            else [ (pkgs."Xss" or (errorHandler.sysDepError "Xss")) ];
          buildable = true;
          };
        "arbtt-stats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ];
          buildable = true;
          };
        "arbtt-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "arbtt-import" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "arbtt-recover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }