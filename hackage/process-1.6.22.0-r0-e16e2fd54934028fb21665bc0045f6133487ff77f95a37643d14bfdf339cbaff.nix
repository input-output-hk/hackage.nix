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
      specVersion = "2.4";
      identifier = { name = "process"; version = "1.6.22.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Process libraries";
      description = "This package contains libraries for dealing with system processes.\n\nThe typed-process package is a more recent take on a process API,\nwhich uses this package internally. It features better binary\nsupport, easier concurrency, and a more composable API. You can\nread more about it at\n<https://github.com/fpco/typed-process/#readme>.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else pkgs.lib.optional (!system.isJavaScript) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"))
        ];
        buildable = true;
      };
    };
  }