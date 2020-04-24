{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Ordinary"; version = "0.2018.1.8"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marisa Kirisame";
      maintainer = "lolisa@marisa.moe";
      author = "Marisa Kirisame";
      homepage = "https://github.com/MarisaKirisame/Ordinary#readme";
      url = "";
      synopsis = "A Programming Language in Construction";
      description = "Please see the README on Github at <https://github.com/MarisaKirisame/Ordinary#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
          ];
        buildable = true;
        };
      exes = {
        "Ordinary-exe" = {
          depends = [
            (hsPkgs."Ordinary" or ((hsPkgs.pkgs-errors).buildDepError "Ordinary"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Ordinary-test" = {
          depends = [
            (hsPkgs."Ordinary" or ((hsPkgs.pkgs-errors).buildDepError "Ordinary"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."threepenny-gui" or ((hsPkgs.pkgs-errors).buildDepError "threepenny-gui"))
            ];
          buildable = true;
          };
        };
      };
    }