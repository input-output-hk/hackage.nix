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
    flags = { kat = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "KpqC"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "osuolfou@gmail.com";
      author = "O. Suolfou";
      homepage = "https://github.com/KpqC/kpqc-haskell";
      url = "";
      synopsis = "Haskell bindings for KpqC post-quantum algorithms";
      description = "Synchronous Haskell APIs for the AIMer and HAETAE signature schemes and the\nNTRU+ and SMAUG-T key encapsulation mechanisms (KEMs). The package bundles\nthe native algorithm sources and does not download code during installation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."KpqC".components.sublibs.native-aimer or (errorHandler.buildDepError "KpqC:native-aimer"))
          (hsPkgs."KpqC".components.sublibs.native-haetae or (errorHandler.buildDepError "KpqC:native-haetae"))
          (hsPkgs."KpqC".components.sublibs.native-ntruplus or (errorHandler.buildDepError "KpqC:native-ntruplus"))
          (hsPkgs."KpqC".components.sublibs.native-smaugt or (errorHandler.buildDepError "KpqC:native-smaugt"))
        ];
        buildable = true;
      };
      sublibs = {
        "native-aimer" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
          buildable = true;
        };
        "native-haetae" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
          buildable = true;
        };
        "native-ntruplus" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
          buildable = true;
        };
        "native-smaugt" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [ (pkgs."m" or (errorHandler.sysDepError "m")) ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."KpqC" or (errorHandler.buildDepError "KpqC"))
          ];
          buildable = true;
        };
        "kat" = {
          depends = pkgs.lib.optionals (flags.kat) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."KpqC" or (errorHandler.buildDepError "KpqC"))
            (hsPkgs."KpqC".components.sublibs.native-aimer or (errorHandler.buildDepError "KpqC:native-aimer"))
            (hsPkgs."KpqC".components.sublibs.native-haetae or (errorHandler.buildDepError "KpqC:native-haetae"))
            (hsPkgs."KpqC".components.sublibs.native-ntruplus or (errorHandler.buildDepError "KpqC:native-ntruplus"))
            (hsPkgs."KpqC".components.sublibs.native-smaugt or (errorHandler.buildDepError "KpqC:native-smaugt"))
          ];
          buildable = if flags.kat then true else false;
        };
      };
    };
  }