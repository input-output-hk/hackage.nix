{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "wtk-gtk"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 Bartosz Wojcik";
      maintainer = "Bartosz Wojcik <bartoszmwojcik@gmail.com>";
      author = "Bartosz Wojcik";
      homepage = "";
      url = "";
      synopsis = "GTK tools within Wojcik Tool Kit";
      description = "Set of simple tools for standardized development of UI where\ninput is set of fields of certain (though various) types\nand there is defined business logic between the fields, values\nthey can accept. Helps with error messages for user.\nIt's idea is separation of presentation layer and business logic.\nThis succeed but at certain costs.\nTool is definetely experimental. Contains lots of awkward hacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."wtk" or ((hsPkgs.pkgs-errors).buildDepError "wtk"))
          (hsPkgs."lenses" or ((hsPkgs.pkgs-errors).buildDepError "lenses"))
          ];
        buildable = true;
        };
      };
    }