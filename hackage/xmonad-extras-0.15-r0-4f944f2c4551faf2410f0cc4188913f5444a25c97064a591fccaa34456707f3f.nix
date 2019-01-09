{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      with_sound = true;
      with_hint = true;
      with_mpd = true;
      with_hlist = false;
      with_regex_posix = true;
      with_template_haskell = true;
      with_brightness = true;
      testing = false;
      };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "xmonad-extras"; version = "0.15"; };
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
      "library" = {
        depends = ((((([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.X11)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
          ] ++ (pkgs.lib).optional (flags.with_sound) (hsPkgs.alsa-mixer)) ++ (pkgs.lib).optionals (flags.with_hint) [
          (hsPkgs.hint)
          (hsPkgs.network)
          ]) ++ (pkgs.lib).optionals (flags.with_mpd) [
          (hsPkgs.libmpd)
          (hsPkgs.bytestring)
          ]) ++ (pkgs.lib).optional (flags.with_regex_posix) (hsPkgs.regex-posix)) ++ (pkgs.lib).optional (flags.with_brightness) (hsPkgs.bytestring)) ++ (pkgs.lib).optionals (flags.with_template_haskell && flags.with_hlist) [
          (hsPkgs.template-haskell)
          (hsPkgs.HList)
          ];
        };
      };
    }