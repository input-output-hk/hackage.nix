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
    flags = { base2 = true; terminfo = true; libiconv = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskeline"; version = "0.6.3.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Judah Jacobson";
      maintainer = "Judah Jacobson <judah.jacobson@gmail.com>";
      author = "Judah Jacobson";
      homepage = "http://trac.haskell.org/haskeline";
      url = "";
      synopsis = "A command-line interface for user input, written in Haskell.";
      description = "Haskeline provides a user interface for line input in command-line\nprograms.  This library is similar in purpose to readline, but since\nit is written in Haskell it is (hopefully) more easily used in other\nHaskell programs.\n\nHaskeline runs both on POSIX-compatible systems and on Windows.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          ] ++ (if flags.base2
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ] ++ (pkgs.lib).optional (flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo")));
        buildable = true;
        };
      };
    }