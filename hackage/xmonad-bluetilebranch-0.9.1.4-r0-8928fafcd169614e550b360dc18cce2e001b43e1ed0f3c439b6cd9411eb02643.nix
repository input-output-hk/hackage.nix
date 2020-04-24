{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "xmonad-bluetilebranch"; version = "0.9.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
      author = "Spencer Janssen";
      homepage = "http://xmonad.org";
      url = "";
      synopsis = "A tiling window manager";
      description = "This is a modified version of xmonad used by Bluetile.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = if flags.testing then false else true;
        };
      exes = {
        "xmonad" = {
          depends = (pkgs.lib).optional (flags.testing) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck")) ++ (pkgs.lib).optionals (flags.testing && flags.small_base) [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }