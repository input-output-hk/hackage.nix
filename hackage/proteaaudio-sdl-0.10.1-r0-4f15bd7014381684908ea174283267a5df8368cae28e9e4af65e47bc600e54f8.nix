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
      identifier = { name = "proteaaudio-sdl"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska, Michael Karg";
      homepage = "";
      url = "";
      synopsis = "Simple audio library for SDL.";
      description = "Simple audio library for SDL. Supports PCM, Ogg, Mp3 and Wav playback and multichannel mixing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = [
          (pkgs."SDL2" or (errorHandler.sysDepError "SDL2"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) (((pkgs.lib).optional (system.isWindows) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ++ (pkgs.lib).optional (system.isLinux) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))) ++ (pkgs.lib).optional (system.isOsx) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")));
        pkgconfig = [
          (pkgconfPkgs."sdl2" or (errorHandler.pkgConfDepError "sdl2"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "proteaaudio-play-sdl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."proteaaudio-sdl" or (errorHandler.buildDepError "proteaaudio-sdl"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }