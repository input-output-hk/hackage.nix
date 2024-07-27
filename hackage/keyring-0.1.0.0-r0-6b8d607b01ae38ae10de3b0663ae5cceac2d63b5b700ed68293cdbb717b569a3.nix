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
    flags = { allbackends = false; example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keyring"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) 2014 Sebastian Wiesner";
      maintainer = "lunaryorn@gmail.com";
      author = "Sebastian Wiesner";
      homepage = "https://github.com/lunaryorn/haskell-keyring";
      url = "";
      synopsis = "Keyring access";
      description = "keyring provides access to the system's keyring to securely store passwords.\n\nCurrently this library supports the following keyring implementations:\n\n* Keychain on OS X\n\n* KWallet on KDE\n\nThe \"System.Keyring\" module provides the high-level functions 'getPassword'\nand 'setPassword' to easily get and set passwords in the keyring of the\ncurrent user.  The appropriate backend is chosen automatically.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (system.isOsx) [
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ]) ++ pkgs.lib.optional (!system.isOsx || flags.allbackends) (hsPkgs."udbus" or (errorHandler.buildDepError "udbus"));
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."Security" or (errorHandler.sysDepError "Security"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ];
        build-tools = pkgs.lib.optional (system.isOsx) (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")));
        buildable = true;
      };
      exes = {
        "keyring-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keyring" or (errorHandler.buildDepError "keyring"))
          ];
          buildable = if flags.example then true else false;
        };
      };
    };
  }