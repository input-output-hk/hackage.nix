{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "HSoM"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2015 Paul Hudak and Donya Quick";
      maintainer = "Donya Quick <donyaquick@gmail.com>";
      author = "Paul Hudak <paul.hudak@yale.edu>,\nDonya Quick <donyaquick@gmail.com>,\nDan Winograd-Cort <daniel.winograd-cort@yale.edu>";
      homepage = "http://www.euterpea.com";
      url = "";
      synopsis = "Library for computer music education";
      description = "Supporting library for the Haskell School of Music textbook.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."HCodecs" or ((hsPkgs.pkgs-errors).buildDepError "HCodecs"))
          (hsPkgs."Euterpea" or ((hsPkgs.pkgs-errors).buildDepError "Euterpea"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."markov-chain" or ((hsPkgs.pkgs-errors).buildDepError "markov-chain"))
          (hsPkgs."pure-fft" or ((hsPkgs.pkgs-errors).buildDepError "pure-fft"))
          (hsPkgs."UISF" or ((hsPkgs.pkgs-errors).buildDepError "UISF"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "6.10") [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }