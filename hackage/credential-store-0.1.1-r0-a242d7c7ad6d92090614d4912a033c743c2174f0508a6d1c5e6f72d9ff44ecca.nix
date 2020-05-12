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
      identifier = { name = "credential-store"; version = "0.1.1"; };
      license = "Apache-2.0";
      copyright = "2017 Andrey Sverdlichenko";
      maintainer = "blaze@ruddy.ru";
      author = "Andrey Sverdlichenko";
      homepage = "https://github.com/rblaze/credential-store#readme";
      url = "";
      synopsis = "Library to access secure credential storage providers";
      description = "Cross-platform library for storing secrets.\n\nUses Windows credential store, gnome-keyring or kwallet as backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."dbus" or (errorHandler.buildDepError "dbus")) ]);
        buildable = true;
        };
      exes = {
        "credential-store-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."credential-store" or (errorHandler.buildDepError "credential-store"))
            ];
          buildable = true;
          };
        };
      tests = {
        "credential-store-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."credential-store" or (errorHandler.buildDepError "credential-store"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }