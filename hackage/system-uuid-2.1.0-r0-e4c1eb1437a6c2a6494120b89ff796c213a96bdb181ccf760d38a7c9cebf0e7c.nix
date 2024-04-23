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
    flags = { split-base = true; cli = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "system-uuid"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "http://github.com/solidsnack/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid" or (errorHandler.sysDepError "uuid")) ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
        buildable = true;
      };
      exes = {
        "hooty" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid" or (errorHandler.sysDepError "uuid")) ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"));
          buildable = if flags.cli then true else false;
        };
      };
    };
  }