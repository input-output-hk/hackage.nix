{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; executeshell = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "sox"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Sox";
      url = "http://code.haskell.org/~thielema/sox/";
      synopsis = "Play, write, read, convert audio signals using Sox";
      description = "This is a wrapper to Sox the Sound Exchanger\n<http://sox.sourceforge.net/>\nwhich lets you play, write, read and convert audio signals\nin various formats, resolutions, and numbers of channels.\n\nThe functions call sox commands via the shell,\nthat is, the 'sox' and 'play' executables must be installed\nand in the path to the executables must be set.\n\nIn the past this was part of the synthesizer package.\n\nThere is some ancient code,\nwhich allows interactive playback using the shell-pipe package on GHC-6.2,\nwhere no runInteractiveProcess was available.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"));
        buildable = true;
        };
      };
    }