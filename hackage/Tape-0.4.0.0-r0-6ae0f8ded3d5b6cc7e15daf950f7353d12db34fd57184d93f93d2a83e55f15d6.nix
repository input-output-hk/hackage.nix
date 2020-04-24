{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Tape"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kenny.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/Tape";
      url = "";
      synopsis = "Bidirectionally infinite streams, akin to the tape of a Turing machine.";
      description = "This module implements two-way infinite streams with a focused element, akin to a Turing machine's tape. This structure is also known by the name of a list zipper (although in this case it's a list zipper with the additional criterion that the list is infinite in both directions).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."Stream" or ((hsPkgs.pkgs-errors).buildDepError "Stream"))
          ];
        buildable = true;
        };
      };
    }