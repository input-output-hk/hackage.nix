{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "permutation"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/permutation";
      url = "";
      synopsis = "A library for representing and applying permutations.";
      description = "This library includes data types for storing permutations.  It\nimplements pure and impure types, the latter of which can be modified\nin-place.  The main utility of the library is converting between\nthe linear representation of a permutation and a sequence of swaps.\nThis allows, for instance, applying a permutation or its inverse\nto an array with O(1) memory use.\n\nMuch of the interface for the library is based on the permutation\nfunctions in the GNU Scientific Library (GSL).\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }