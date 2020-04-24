{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "type-level-natural-number"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "Simple, Haskell 2010-compatible type level natural numbers";
      description = "This is a simple, Haskell 2010 compatible implementation\nof type-level natural numbers.  Operations requiring\nnon-Haskell 2010 language extensions have been split\ninto a separate package.\n\nThe difference between this package and the many\nothers on Hackage implementing type-level\nnaturals is its emphasis on simplicity.  It only\nsupports non-negative natural numbers, and only\nthe successor and predicessor operations.  It\nrepresents natural numbers using a type-level\nlinked list, so it is not intended to be used for\nrepresenting large numbers.  Pre-defined aliases\nfor natural numbers up to 15 are provided.\n\nThe code for this package was largely taken from\nthe excellent Vec package; I created this package\nwith the intent of making this functionality more\nwidely available.\n\nDifference from 1.0:  Added instances for Typeable, and\nword synonyms for N0...N15.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }