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
    flags = { terminfo = true; libiconv = false; legacy-encoding = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskeline"; version = "0.7.1.0"; };
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
        depends = (([
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]) ++ (pkgs.lib).optional (!(!flags.legacy-encoding && (compiler.isGhc && (compiler.version).ge "7.4"))) (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ] ++ (pkgs.lib).optional (flags.terminfo) (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo")));
        buildable = true;
        };
      };
    }