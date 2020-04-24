{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alsa-seq"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Bringert, Iavor S. Diatchki, Henning Thielemann";
      maintainer = "Henning Thielemann <alsa@henning-thielemann.de>";
      author = "Bjorn Bringert <bjorn@bringert.net>, Iavor S. Diatchki <iavor.diatchki@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/ALSA";
      url = "";
      synopsis = "Binding to the ALSA Library API (MIDI sequencer).";
      description = "This package provides access to ALSA sequencer (MIDI support).\nFor audio support see alsa-pcm.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."asound" or ((hsPkgs.pkgs-errors).sysDepError "asound"))
          ];
        buildable = true;
        };
      exes = {
        "test1" = {
          depends = [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "test2" = {
          depends = [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "test3" = {
          depends = [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "test4" = {
          depends = [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        "test5" = {
          depends = [
            (hsPkgs."alsa-core" or ((hsPkgs.pkgs-errors).buildDepError "alsa-core"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }