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
      specVersion = "1.2";
      identifier = { name = "WL500gPControl"; version = "0.3.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vasyl Pasternak <vasyl.pasternak@gmail.com>";
      author = "Vasyl Pasternak <vasyl.pasternak@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple command line tools to control the\nAsus WL500gP router";
      description = "The package consists of two command-line utilities to manage the /Asus WL500g Premium/\nrouter without logging to its admin page.\n\nThe main utility is @WL500gPControl@ is used to ask the status of the connection\n(@Connected@/@Disconnected@), connection parameters (@DNS servers@, @Local IP@,\n@Foreign IP@ etc, log), and perform connection, disconnection and reconnection.\n\nOther utility - @WL500gPStatus@ created only to ease integration into <xmobar>\nand return only @Connected@ or @Disconnected@ string, enclosed into format\ntags (when option @-c@ is given).\n\nThe last argument of these two utilities is a credentials file. It has simple format:\n\n@\nuser: \\<user name\\>\npassword: \\<password\\>\nhost: \\<host name or IP address\\>\n@\n\nThe password should be in plain text, so it is recommended to protect this\nfile from reading for everyone except you.\n\nIf credentials file is not given, than programs will try to use default\ncredential file, which should be located:\n\n* on Linux: @$HOME\\/.WL500gPControl\\/credentials@\n\n* on Windows: @C\\:\\\\Documents And Settings\\\\user\\\\Application Data\\\\WL500gPControl\\\\credentials@\n\nSometimes paths could be different. To determine the read path to the\ndefault credentials file run @WL500gPControl -s@ and look at the error string, where\nwill be sayed where it searches credentials file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "WL500gPStatus" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."WL500gPLib" or (errorHandler.buildDepError "WL500gPLib"))
          ];
          buildable = true;
        };
        "WL500gPControl" = {
          depends = if !system.isWindows
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."WL500gPLib" or (errorHandler.buildDepError "WL500gPLib"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."WL500gPLib" or (errorHandler.buildDepError "WL500gPLib"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            ];
          buildable = true;
        };
      };
    };
  }