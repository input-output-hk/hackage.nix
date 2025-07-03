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
    flags = { os-string = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "unix"; version = "2.8.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Julian Ospald <hasufell@posteo.de>, Viktor Dukhovni <ietf-dane@dukhovni.org>, Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "";
      homepage = "https://github.com/haskell/unix";
      url = "";
      synopsis = "POSIX functionality";
      description = "This package gives you access to the set of operating system\nservices standardised by\n<http://pubs.opengroup.org/onlinepubs/9699919799/ POSIX.1-2008>\n(or the IEEE Portable Operating System Interface for Computing\nEnvironments - IEEE Std. 1003.1).\n\nThe package is not supported under Windows.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"))) ++ (if flags.os-string
          then [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          ]
          else [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ]);
        buildable = if system.isWindows then false else true;
      };
      tests = {
        "unix-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ (if flags.os-string
            then [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            ]
            else [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ]);
          buildable = true;
        };
        "FdReadBuf001" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "ForkProcess01" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Signals002" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Signals004" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Posix004" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Posix009" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Posix014" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "T8108" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "ResourceLimit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Terminal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "PutEnv001" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Semaphore001" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "Semaphore002" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "SemaphoreInterrupt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ pkgs.lib.optional (system.isJavaScript) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
          buildable = if system.isJavaScript then false else true;
        };
        "T13660" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.os-string
            then [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            ]
            else [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ]);
          buildable = true;
        };
      };
    };
  }