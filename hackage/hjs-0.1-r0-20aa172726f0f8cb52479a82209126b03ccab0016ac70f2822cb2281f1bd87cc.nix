{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hjs"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Mark Wassell 2007";
      maintainer = "mwassell@bigpond.net.au";
      author = "Mark Wassell<mwassell@bigpond.net.au>";
      homepage = "";
      url = "";
      synopsis = "Javascript Parser";
      description = "A Javascript parser to be extended to an interpreter in later versions.\nParses as per ECMA-262 plus some parts of JS >=1.5";
      buildType = "Custom";
      };
    components = {
      exes = {
        "FixHappy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."happy" or ((hsPkgs.pkgs-errors).buildDepError "happy"))
            (hsPkgs."alex" or ((hsPkgs.pkgs-errors).buildDepError "alex"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        "hjs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."happy" or ((hsPkgs.pkgs-errors).buildDepError "happy"))
            (hsPkgs."alex" or ((hsPkgs.pkgs-errors).buildDepError "alex"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }