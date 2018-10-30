{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      executeshell = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "sox";
        version = "0.2.2.7";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Sox";
      url = "";
      synopsis = "Play, write, read, convert audio signals using Sox";
      description = "This is a wrapper to Sox the Sound Exchanger\n<http://sox.sourceforge.net/>\nwhich lets you play, write, read and convert audio signals\nin various formats, resolutions, and numbers of channels.\n\nThe functions call sox commands via the shell,\nthat is, the 'sox' and 'play' executables must be installed\nand in the path to the executables must be set.\n\nIn the past this was part of the synthesizer package.\n\nThere is some ancient code,\nwhich allows interactive playback using the shell-pipe package on GHC-6.2,\nwhere no runInteractiveProcess was available.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.sample-frame)
          (hsPkgs.explicit-exception)
          (hsPkgs.extensible-exceptions)
          (hsPkgs.transformers)
          (hsPkgs.utility-ht)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.base)
          ]
          else [
            (hsPkgs.special-functors)
            (hsPkgs.base)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }