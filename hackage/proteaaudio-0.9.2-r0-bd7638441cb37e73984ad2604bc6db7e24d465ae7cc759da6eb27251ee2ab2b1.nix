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
    flags = { example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "proteaaudio"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska";
      homepage = "";
      url = "";
      synopsis = "Simple audio library for Windows, Linux, OSX.";
      description = "Simple audio library for Windows, Linux, OSX. Supports PCM, Ogg and Wav playback and multichannel mixing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = (pkgs.lib.optionals (system.isWindows) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."dsound" or (errorHandler.sysDepError "dsound"))
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."pulse-simple" or (errorHandler.sysDepError "pulse-simple"))
          (pkgs."pulse" or (errorHandler.sysDepError "pulse"))
        ]) ++ pkgs.lib.optionals (system.isOsx) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
        ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
        ];
        pkgconfig = pkgs.lib.optionals (system.isLinux) [
          (pkgconfPkgs."libpulse-simple" or (errorHandler.pkgConfDepError "libpulse-simple"))
          (pkgconfPkgs."libpulse" or (errorHandler.pkgConfDepError "libpulse"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "proteaaudio-play" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."proteaaudio" or (errorHandler.buildDepError "proteaaudio"))
          ];
          buildable = if flags.example then true else false;
        };
      };
    };
  }