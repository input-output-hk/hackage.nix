{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "brick-dropdownmenu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/brick-dropdownmenu#readme";
      url = "";
      synopsis = "A drop-down menu widget for brick.";
      description = "A simple drop-down menu widget for the declarative text user interface library brick.\nEach submenu and menu item can have an associated global key binding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or ((hsPkgs.pkgs-errors).buildDepError "microlens-ghc"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."pointedlist" or ((hsPkgs.pkgs-errors).buildDepError "pointedlist"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "brick-dropdownmenu-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."brick" or ((hsPkgs.pkgs-errors).buildDepError "brick"))
            (hsPkgs."brick-dropdownmenu" or ((hsPkgs.pkgs-errors).buildDepError "brick-dropdownmenu"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or ((hsPkgs.pkgs-errors).buildDepError "microlens-ghc"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."pointedlist" or ((hsPkgs.pkgs-errors).buildDepError "pointedlist"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."vty" or ((hsPkgs.pkgs-errors).buildDepError "vty"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }