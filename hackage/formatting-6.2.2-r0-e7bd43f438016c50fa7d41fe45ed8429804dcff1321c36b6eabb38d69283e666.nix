{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "formatting"; version = "6.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Shachaf Ben-Kiki, Martijn van Steenbergen, Mike Meyer";
      homepage = "";
      url = "";
      synopsis = "Combinator-based type-safe formatting (like printf() or FORMAT)";
      description = "Combinator-based type-safe formatting (like printf() or FORMAT), modelled from the HoleyMonoids package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          ];
        buildable = true;
        };
      };
    }