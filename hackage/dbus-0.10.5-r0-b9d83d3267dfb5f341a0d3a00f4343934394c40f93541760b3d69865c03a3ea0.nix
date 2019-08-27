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
    flags = { network-bytestring-610 = false; network-bytestring = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "dbus"; version = "0.10.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-dbus/";
      url = "";
      synopsis = "A client library for the D-Bus IPC system.";
      description = "D-Bus is a simple, message-based protocol for inter-process\ncommunication, which allows applications to interact with other parts of\nthe machine and the user's session using remote procedure calls.\n\nD-Bus is a essential part of the modern Linux desktop, where it replaces\nearlier protocols such as CORBA and DCOP.\n\nThis library is an implementation of the D-Bus protocol in Haskell. It\ncan be used to add D-Bus support to Haskell applications, without the\nawkward interfaces common to foreign bindings.\n\nExample: connect to the session bus, and get a list of active names.\n\n@\n&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;\n\nimport Data.List (sort)\nimport DBus\nimport DBus.Client\n\nmain = do\n&#x20;   client <- connectSession\n&#x20;   //\n&#x20;   \\-- Request a list of connected clients from the bus\n&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")\n&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"\n&#x20;       &#x7d;\n&#x20;   //\n&#x20;   \\-- org.freedesktop.DBus.ListNames() returns a single value, which is\n&#x20;   \\-- a list of names (here represented as [String])\n&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)\n&#x20;   //\n&#x20;   \\-- Print each name on a line, sorted so reserved names are below\n&#x20;   \\-- temporary names.\n&#x20;   mapM_ putStrLn (sort names)\n@\n\n>\$ ghc --make list-names.hs\n>\$ ./list-names\n>:1.0\n>:1.1\n>:1.10\n>:1.106\n>:1.109\n>:1.110\n>ca.desrt.dconf\n>org.freedesktop.DBus\n>org.freedesktop.Notifications\n>org.freedesktop.secrets\n>org.gnome.ScreenSaver";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."libxml-sax" or (buildDepError "libxml-sax"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xml-types" or (buildDepError "xml-types"))
          ] ++ (if compiler.isGhc && (compiler.version).lt "6.12"
          then if flags.network-bytestring-610
            then [ (hsPkgs."network" or (buildDepError "network")) ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
              ]
          else if flags.network-bytestring
            then [ (hsPkgs."network" or (buildDepError "network")) ]
            else [
              (hsPkgs."network" or (buildDepError "network"))
              (hsPkgs."network-bytestring" or (buildDepError "network-bytestring"))
              ]);
        };
      };
    }