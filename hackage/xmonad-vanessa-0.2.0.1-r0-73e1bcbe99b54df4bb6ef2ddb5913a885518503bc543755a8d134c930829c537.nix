{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
      url = "";
      synopsis = "Custom xmonad, which builds with stack or cabal.";
      description = "Custom xmonad example, plus several bits of functionality for managing media within XMonad.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-contrib"))
          (hsPkgs."composition-prelude" or ((hsPkgs.pkgs-errors).buildDepError "composition-prelude"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-vanessa"))
            ];
          buildable = if flags.library then false else true;
          };
        "getkb" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-vanessa"))
            ];
          buildable = if flags.library then false else true;
          };
        };
      tests = {
        "xmonad-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-vanessa"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
            ];
          buildable = true;
          };
        };
      };
    }