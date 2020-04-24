{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "holey-format"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done, Shachaf Ben-Kiki";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done, Shachaf Ben-Kiki";
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
          ];
        buildable = true;
        };
      };
    }