{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      small_base = true;
      with_parsec = true;
      with_split = true;
      with_hint = true;
      with_mpd = true;
      with_hlist = true;
      with_regex_posix = true;
      with_template_haskell = true;
      testing = false;
      };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "xmonad-extras"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com, daniel.schoepe@googlemail.com";
      author = "The Daniels Schoepe and Wagner";
      homepage = "http://projects.haskell.org/xmonad-extras";
      url = "";
      synopsis = "Third party extensions for xmonad with wacky dependencies";
      description = "Various modules for xmonad that cannot be added to xmonad-contrib\nbecause of additional dependencies.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((([
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-contrib"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ])) ++ (pkgs.lib).optionals (flags.with_parsec && flags.with_split) [
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ]) ++ (pkgs.lib).optionals (flags.with_hint) [
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ]) ++ (pkgs.lib).optional (flags.with_mpd) (hsPkgs."libmpd" or ((hsPkgs.pkgs-errors).buildDepError "libmpd"))) ++ (pkgs.lib).optional (flags.with_regex_posix) (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.12.1" && flags.with_template_haskell && flags.with_hlist) [
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."HList" or ((hsPkgs.pkgs-errors).buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }