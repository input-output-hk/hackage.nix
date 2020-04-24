{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ComonadSheet"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013-2014 Kenneth W. Foner";
      maintainer = "kenneth.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/ComonadSheet";
      url = "";
      synopsis = "A library for expressing spreadsheet-like computations as the fixed-points of comonads.";
      description = "@ComonadSheet@ is a library for expressing spreadsheet-like computations with absolute and relative references, using fixed-points of n-dimensional comonads. For examples of use, see the <https://github.com/kwf/ComonadSheet GitHub page> for the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."applicative-numbers" or ((hsPkgs.pkgs-errors).buildDepError "applicative-numbers"))
          (hsPkgs."Stream" or ((hsPkgs.pkgs-errors).buildDepError "Stream"))
          (hsPkgs."NestedFunctor" or ((hsPkgs.pkgs-errors).buildDepError "NestedFunctor"))
          (hsPkgs."PeanoWitnesses" or ((hsPkgs.pkgs-errors).buildDepError "PeanoWitnesses"))
          (hsPkgs."IndexedList" or ((hsPkgs.pkgs-errors).buildDepError "IndexedList"))
          (hsPkgs."Tape" or ((hsPkgs.pkgs-errors).buildDepError "Tape"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }