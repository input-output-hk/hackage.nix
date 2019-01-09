{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "KMP"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2018, Cindy Wang (CindyLinz)";
      maintainer = "Cindy Wang <cindylinz@gmail.com>";
      author = "Cindy Wang (CindyLinz)\nSilvan Mosberger (Infinisil@github)";
      homepage = "https://github.com/CindyLinz/Haskell-KMP";
      url = "";
      synopsis = "Knuth–Morris–Pratt string searching algorithm";
      description = "This module implements the Knuth-Morris-Pratt algorithm.\nIt can search a word in a text in O(m+n) time, where m and n are the length of the word and the text.\nThis module can apply on any list of instance of Eq.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.array) ]; };
      tests = {
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.Cabal) (hsPkgs.KMP) ]; };
        };
      };
    }