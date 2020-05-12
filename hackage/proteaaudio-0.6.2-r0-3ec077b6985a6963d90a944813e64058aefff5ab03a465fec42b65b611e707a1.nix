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
      specVersion = "1.2";
      identifier = { name = "proteaaudio"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "";
      url = "";
      synopsis = "A wrapper for the proteaaudio library.";
      description = "A wrapper for the proteaaudio library. http://viremo.eludi.net/proteaAudio/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = ((pkgs.lib).optionals (system.isWindows) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."dsound" or (errorHandler.sysDepError "dsound"))
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
          ] ++ (pkgs.lib).optionals (system.isLinux) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."asound" or (errorHandler.sysDepError "asound"))
          ]) ++ (pkgs.lib).optionals (system.isOsx) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          ];
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }