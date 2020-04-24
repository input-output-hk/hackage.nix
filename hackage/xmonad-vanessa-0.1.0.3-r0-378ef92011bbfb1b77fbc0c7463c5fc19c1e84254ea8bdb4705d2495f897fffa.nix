{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xmonad-vanessa"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Vanessa McHale";
      maintainer = "tmchale@wisc.edu";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/xmonad-vanessa#readme";
      url = "";
      synopsis = "Custom xmonad, which uses stack and sets various defaults";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."xmonad" or ((hsPkgs.pkgs-errors).buildDepError "xmonad"))
          (hsPkgs."xmonad-contrib" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-contrib"))
          (hsPkgs."xmonad-extras" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-extras"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "xmonad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-vanessa"))
            ];
          buildable = true;
          };
        "getkb" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xmonad-vanessa" or ((hsPkgs.pkgs-errors).buildDepError "xmonad-vanessa"))
            ];
          buildable = true;
          };
        };
      };
    }