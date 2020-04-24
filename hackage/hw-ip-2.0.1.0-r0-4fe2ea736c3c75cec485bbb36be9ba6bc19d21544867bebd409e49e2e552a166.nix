{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hw-ip"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky, David Turnbull, Jian Wan";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky,\nDavid Turnbull,\nJian Wan";
      homepage = "https://github.com/haskell-works/hw-ip#readme";
      url = "";
      synopsis = "Library for manipulating IP addresses and CIDR blocks";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."appar" or ((hsPkgs.pkgs-errors).buildDepError "appar"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "hw-ip-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."appar" or ((hsPkgs.pkgs-errors).buildDepError "appar"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
            (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-ip" or ((hsPkgs.pkgs-errors).buildDepError "hw-ip"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }