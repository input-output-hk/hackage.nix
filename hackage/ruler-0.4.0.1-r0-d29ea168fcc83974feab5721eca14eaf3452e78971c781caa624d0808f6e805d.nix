{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ruler"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "UHC Team";
      homepage = "https://github.com/UU-ComputerScience/ruler";
      url = "";
      synopsis = "Ruler tool for UHC";
      description = "Ruler tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
      };
    components = {
      exes = {
        "ruler" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."uulib" or ((hsPkgs.pkgs-errors).buildDepError "uulib"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."uhc-util" or ((hsPkgs.pkgs-errors).buildDepError "uhc-util"))
            (hsPkgs."uuagc" or ((hsPkgs.pkgs-errors).buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or ((hsPkgs.pkgs-errors).buildDepError "uuagc-cabal"))
            (hsPkgs."shuffle" or ((hsPkgs.pkgs-errors).buildDepError "shuffle"))
            ];
          buildable = true;
          };
        };
      };
    }