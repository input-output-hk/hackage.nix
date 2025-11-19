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
      specVersion = "3.0";
      identifier = { name = "dpapi"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "elijahiff@gmail.com";
      author = "Hex";
      homepage = "https://gitlab.com/Hex052/haskell-dpapi";
      url = "";
      synopsis = "Windows DPAPI bindings";
      description = "Bindings for Windows DPAPI, for protecting data on one device using Windows logon or machine credentials.\nThese functions return cipertext for you to store in a file or some other place.\nIf you want the plaintext to be stored in the OS, you may be looking for the keyring package, which is also more portable.\nThis is only bindings to the two most used functions CryptProtectData and CryptUnprotectData, as\nMicrosoft no longer recommends its use in .NET (with SecureString).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"));
        libs = [ (pkgs."crypt32" or (errorHandler.sysDepError "crypt32")) ];
        buildable = if !system.isWindows then false else true;
      };
      tests = {
        "dpapi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."dpapi" or (errorHandler.buildDepError "dpapi"))
          ];
          buildable = true;
        };
      };
    };
  }