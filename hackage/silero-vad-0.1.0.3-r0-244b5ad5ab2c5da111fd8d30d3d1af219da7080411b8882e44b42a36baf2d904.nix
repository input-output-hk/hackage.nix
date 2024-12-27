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
    flags = { build-readme = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "silero-vad"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "qwbarch <qwbarch@gmail.com>";
      author = "qwbarch";
      homepage = "https://github.com/qwbarch/silero-vad-hs";
      url = "";
      synopsis = "Voice activity detection powered by SileroVAD.";
      description = "A haskell implentation of SileroVAD, a pre-trained enterprise-grade voice activity detector.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (system.isLinux || system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        buildable = true;
      };
      exes = {
        "readme" = {
          depends = ([
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optional (system.isLinux || system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = if !flags.build-readme then false else true;
        };
      };
      tests = {
        "test" = {
          depends = ([
            (hsPkgs."WAVE" or (errorHandler.buildDepError "WAVE"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optional (system.isLinux || system.isOsx) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          buildable = true;
        };
      };
    };
  }