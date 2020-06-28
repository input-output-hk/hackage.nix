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
      specVersion = "1.10";
      identifier = { name = "dbus"; version = "1.2.16"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Andrey Sverdlichenko <blaze@ruddy.ru>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://github.com/rblaze/haskell-dbus#readme";
      url = "";
      synopsis = "A client library for the D-Bus IPC system.";
      description = "D-Bus is a simple, message-based protocol for inter-process\ncommunication, which allows applications to interact with other parts of\nthe machine and the user's session using remote procedure calls.\n\nD-Bus is a essential part of the modern Linux desktop, where it replaces\nearlier protocols such as CORBA and DCOP.\n\nThis library is an implementation of the D-Bus protocol in Haskell. It\ncan be used to add D-Bus support to Haskell applications, without the\nawkward interfaces common to foreign bindings.\n\nExample: connect to the session bus, and get a list of active names.\n\n@\n&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;\n\nimport Data.List (sort)\nimport DBus\nimport DBus.Client\n\nmain = do\n&#x20;   client <- connectSession\n&#x20;\n&#x20;   -- Request a list of connected clients from the bus\n&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")\n&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"\n&#x20;       &#x7d;\n&#x20;\n&#x20;   -- org.freedesktop.DBus.ListNames() returns a single value, which is\n&#x20;   -- a list of names (here represented as [String])\n&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)\n&#x20;\n&#x20;   -- Print each name on a line, sorted so reserved names are below\n&#x20;   -- temporary names.\n&#x20;   mapM_ putStrLn (sort names)\n@\n\n>\$ ghc --make list-names.hs\n>\$ ./list-names\n>:1.0\n>:1.1\n>:1.10\n>:1.106\n>:1.109\n>:1.110\n>ca.desrt.dconf\n>org.freedesktop.DBus\n>org.freedesktop.Notifications\n>org.freedesktop.secrets\n>org.gnome.ScreenSaver";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      tests = {
        "dbus_tests" = {
          depends = [
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "dbus_benchmarks" = {
          depends = [
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }