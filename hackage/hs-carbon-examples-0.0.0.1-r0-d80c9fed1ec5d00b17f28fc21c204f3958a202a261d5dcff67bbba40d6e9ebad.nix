{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hs-carbon-examples"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "cholmgreen@gmail.com";
      author = "Casper M. H. Holmgreen";
      homepage = "";
      url = "";
      synopsis = "Example Monte Carlo simulations implemented with Carbon";
      description = "Example Monte Carlo simulations implemented with Carbon";
      buildType = "Simple";
      };
    components = {
      exes = {
        "PiExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-carbon" or ((hsPkgs.pkgs-errors).buildDepError "hs-carbon"))
            (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
            ];
          buildable = true;
          };
        "IntegralExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-carbon" or ((hsPkgs.pkgs-errors).buildDepError "hs-carbon"))
            (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
            ];
          buildable = true;
          };
        "TransportExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hs-carbon" or ((hsPkgs.pkgs-errors).buildDepError "hs-carbon"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."tf-random" or ((hsPkgs.pkgs-errors).buildDepError "tf-random"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }