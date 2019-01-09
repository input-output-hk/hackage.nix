{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "type-level-natural-number"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcrosswhite@gmail.com>";
      author = "Gregory Crosswhite";
      homepage = "";
      url = "";
      synopsis = "Simple type level natural numbers";
      description = "This is a simple implementation of type-level natural\nnumbers that only requires DeriveDataTypeable.  Operations\nrequiring more language extensions have been split into a\nseparate package.\n\nThe difference between this package and the many\nothers on Hackage implementing type-level\nnaturals is its emphasis on simplicity.  It only\nsupports non-negative natural numbers, and only\nthe successor and predicessor operations.  It\nrepresents natural numbers using a type-level\nlinked list, so it is not intended to be used for\nrepresenting large numbers.  Pre-defined aliases\nfor natural numbers up to 15 are provided.\n\nThe code for this package was largely taken from\nthe excellent Vec package; I created this package\nwith the intent of making this functionality more\nwidely available.\n\nDifference from 1.0:  Added instances for Typeable, and\nword synonyms for N0...N15.\n\nDifference from 1.1:  Performance enhancements for\nnaturalNumberAsInt.  Simplified Show implementation.\n\nDifference from 1.1.1:  Gave up on Haskell 2010\ncompatibility since as of GHC 7.8 manually deriving from\nTypeable is no longer allowed; now I use\nDeriveDataTypeable to construct the instances.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }