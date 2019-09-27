let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      description = "The package consists of two command-line utilities to manage the /Asus WL500g Premium/\nrouter without logging to its admin page.\n\nThe main utility is @WL500gPControl@ is used to ask the status of the connection\n(@Connected@/@Disconnected@), connection parameters (@DNS servers@, @Local IP@,\n@Foreign IP@ etc, log), and perform connection, disconnection and reconnection.\n\nOther utility - @WL500gPStatus@ created only to ease integration into <xmobar>\nand return only @Connected@ or @Disconnected@ string, enclosed into format\ntags (when option @-c@ is given).\n\nThe last argument of these two utilities is a credentials file. It has simple format:\n\n@\nuser: \\<user name\\>\npassword: \\<password\\>\nhost: \\<host name or IP address\\>\n@\n\nThe password should be in plain text, so it is recommended to protect this\nfile from reading for everyone except you.\n\nIf credentials file is not given, than programs will try to use default\ncredential file, which should be located:\n\n* on Linux: @\$HOME\\/.WL500gPControl\\/credentials@\n\n* on Windows: @C\\:\\\\Documents And Settings\\\\user\\\\Application Data\\\\WL500gPControl\\\\credentials@\n\nSometimes paths could be different. To determine the read path to the\ndefault credentials file run @WL500gPControl -s@ and look at the error string, where\nwill be sayed where it searches credentials file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "WL500gPStatus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."WL500gPLib" or (buildDepError "WL500gPLib"))
            ];
          buildable = true;
          };
        "WL500gPControl" = {
          depends = if !system.isWindows
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."WL500gPLib" or (buildDepError "WL500gPLib"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."unix" or (buildDepError "unix"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."filepath" or (buildDepError "filepath"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."WL500gPLib" or (buildDepError "WL500gPLib"))
              (hsPkgs."mtl" or (buildDepError "mtl"))
              (hsPkgs."Win32" or (buildDepError "Win32"))
              ];
          buildable = true;
          };
        };
      };
    }