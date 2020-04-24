{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; use_xft = true; testing = false; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "xmonad-contrib"; version = "0.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spencerjanssen@gmail.com";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Third party extensions for xmonad";
      description = "Third party tiling algorithms, configurations and scripts to xmonad,\na tiling window manager for X.\n\nFor an introduction to building, configuring and using xmonad\nextensions, see \"XMonad.Doc\". In particular:\n\n\"XMonad.Doc.Configuring\", a guide to configuring xmonad\n\n\"XMonad.Doc.Extending\", using the contributed extensions library\n\n\"XMonad.Doc.Developing\", introduction to xmonad internals and writing\nyour own extensions.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
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
            ])) ++ (pkgs.lib).optionals (flags.use_xft) [
          (hsPkgs."X11-xft" or ((hsPkgs.pkgs-errors).buildDepError "X11-xft"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }