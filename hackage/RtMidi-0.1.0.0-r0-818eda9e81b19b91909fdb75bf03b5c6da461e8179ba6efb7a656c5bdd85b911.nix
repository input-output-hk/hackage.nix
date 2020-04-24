{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { alsa = false; jack = false; core = false; mm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "RtMidi"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kohlrabi@kohlra.biz";
      author = "kohlrabi";
      homepage = "https://github.com/riottracker/RtMidi";
      url = "";
      synopsis = "";
      description = "Haskell wrapper for RtMidi, the lightweight, cross-platform MIDI I/O library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = (([
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ] ++ (pkgs.lib).optionals (flags.alsa) [
          (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ]) ++ (pkgs.lib).optional (flags.jack) (pkgs."jack" or ((hsPkgs.pkgs-errors).sysDepError "jack"))) ++ (pkgs.lib).optionals (flags.core) [
          (pkgs."CoreMIDI" or ((hsPkgs.pkgs-errors).sysDepError "CoreMIDI"))
          (pkgs."CoreAudio" or ((hsPkgs.pkgs-errors).sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or ((hsPkgs.pkgs-errors).sysDepError "CoreFoundation"))
          ];
        buildable = true;
        };
      };
    }