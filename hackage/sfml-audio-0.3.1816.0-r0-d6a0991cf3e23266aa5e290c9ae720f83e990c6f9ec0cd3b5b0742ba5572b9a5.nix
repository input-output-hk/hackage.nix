{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sfml-audio"; version = "0.3.1816.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "shahn@joyridelabs.de";
      author = "Sönke Hahn";
      homepage = "http://patch-tag.com/r/shahn/sfml-audio";
      url = "";
      synopsis = "minimal bindings to the audio module of sfml";
      description = "Provides a very minimal interface to the audio module of sfml.\nCurrently, only the playing of sounds is covered.\nPlaying background music is not yet supported, but planned.\n(sfml is a multimedia library: <http://www.sfml-dev.org/>)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = ([
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."sndfile" or ((hsPkgs.pkgs-errors).sysDepError "sndfile"))
          ] ++ (pkgs.lib).optionals (system.isLinux) [
          (pkgs."openal" or ((hsPkgs.pkgs-errors).sysDepError "openal"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ]) ++ (pkgs.lib).optional (system.isWindows) (pkgs."openal32" or ((hsPkgs.pkgs-errors).sysDepError "openal32"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenAL" or ((hsPkgs.pkgs-errors).sysDepError "OpenAL"));
        buildable = true;
        };
      };
    }