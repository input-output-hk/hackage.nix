{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildsampleprograms = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "nonlinear-optimization-ad"; version = "0.2.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad";
      url = "";
      synopsis = "Wrapper of nonlinear-optimization package for using with AD package";
      description = "This package enhances\n<https://hackage.haskell.org/package/nonlinear-optimization nonlinear-optimization>'s\nusability by using\n<https://hackage.haskell.org/package/ad ad>'s\nautomatic differentiation. You only need to\nspecify a function to minimize and don't need to\nspecify its gradient explicitly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or ((hsPkgs.pkgs-errors).buildDepError "nonlinear-optimization"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          ];
        buildable = true;
        };
      exes = {
        "LinearRegression" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."nonlinear-optimization-ad" or ((hsPkgs.pkgs-errors).buildDepError "nonlinear-optimization-ad"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = if !flags.buildsampleprograms then false else true;
          };
        };
      };
    }