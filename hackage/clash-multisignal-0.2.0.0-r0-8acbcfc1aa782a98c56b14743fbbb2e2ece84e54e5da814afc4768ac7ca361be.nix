{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clash-multisignal"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Luka Rahne";
      maintainer = "luka.rahne@gmail.com";
      author = "Luka Rahne";
      homepage = "https://github.com/ra1u/clash-multisignal";
      url = "";
      synopsis = "";
      description = "Clash/Fpga library for working with multiple elements arriving at same clock as stream.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clash-prelude" or ((hsPkgs.pkgs-errors).buildDepError "clash-prelude"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
          ];
        buildable = true;
        };
      };
    }