{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      with_sound = true;
      with_hint = true;
      with_mpd = true;
      with_hlist = false;
      with_regex_posix = true;
      with_template_haskell = true;
      testing = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "xmonad-extras";
          version = "0.13.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Sibi <sibi@psibi.in>, daniel@wagner-home.com, daniel.schoepe@googlemail.com";
        author = "The Daniels Schoepe and Wagner";
        homepage = "https://github.com/xmonad/xmonad-extras";
        url = "";
        synopsis = "Third party extensions for xmonad with wacky dependencies";
        description = "Various modules for xmonad that cannot be added to xmonad-contrib\nbecause of additional dependencies.";
        buildType = "Simple";
      };
      components = {
        xmonad-extras = {
          depends  = ((((([
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.X11
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional _flags.with_sound hsPkgs.alsa-mixer) ++ [
            hsPkgs.hint
            hsPkgs.network
          ]) ++ optionals _flags.with_mpd [
            hsPkgs.libmpd
            hsPkgs.bytestring
          ]) ++ pkgs.lib.optional _flags.with_regex_posix hsPkgs.regex-posix) ++ optionals (_flags.with_template_haskell && _flags.with_hlist) [
            hsPkgs.template-haskell
            hsPkgs.HList
          ];
        };
      };
    }