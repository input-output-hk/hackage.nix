{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "proteaaudio"; version = "0.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska";
      homepage = "";
      url = "";
      synopsis = "Simple audio library for Windows, Linux, OSX.";
      description = "Simple audio library for Windows, Linux, OSX. Supports Ogg and Wav playback and multichannel mixing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = ((pkgs.lib).optionals (system.isWindows) [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          (pkgs."dsound" or ((hsPkgs.pkgs-errors).sysDepError "dsound"))
          (pkgs."winmm" or ((hsPkgs.pkgs-errors).sysDepError "winmm"))
          ] ++ (pkgs.lib).optionals (system.isLinux) [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
          ]) ++ (pkgs.lib).optionals (system.isOsx) [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation" or ((hsPkgs.pkgs-errors).sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or ((hsPkgs.pkgs-errors).sysDepError "CoreAudio"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "proteaaudio-play" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."proteaaudio" or ((hsPkgs.pkgs-errors).buildDepError "proteaaudio"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }