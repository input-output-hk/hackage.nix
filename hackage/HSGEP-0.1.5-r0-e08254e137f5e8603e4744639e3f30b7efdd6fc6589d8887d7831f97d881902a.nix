{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "HSGEP"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012 Matthew Sottile";
      maintainer = "Matthew Sottile <mjsottile@computer.org>";
      author = "Matthew Sottile";
      homepage = "http://github.com/mjsottile/hsgep/";
      url = "";
      synopsis = "Gene Expression Programming evolutionary algorithm in Haskell";
      description = "Gene Expression Programming evolutionary algorithm implemented\nin Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mersenne-random-pure64" or ((hsPkgs.pkgs-errors).buildDepError "mersenne-random-pure64"))
          (hsPkgs."monad-mersenne-random" or ((hsPkgs.pkgs-errors).buildDepError "monad-mersenne-random"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "HSGEP_Regression" = {
          depends = [
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            ];
          buildable = true;
          };
        "HSGEP_CADensity" = { buildable = false; };
        };
      };
    }