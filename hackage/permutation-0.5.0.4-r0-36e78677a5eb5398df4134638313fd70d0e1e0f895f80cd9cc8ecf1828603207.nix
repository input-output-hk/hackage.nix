{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "permutation"; version = "0.5.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Sophie Taylor <sophie@traumapony.org>";
      author = "Patrick Perry";
      homepage = "https://github.com/spacekitteh/permutation";
      url = "";
      synopsis = "A library for permutations and combinations.";
      description = "This library includes data types for storing permutations and\ncombinations.  It implements pure and impure types, the latter of\nwhich can be modified in-place.  The library uses aggressive\ninlining and MutableByteArray#s internally, so it is very\nefficient.\n\nThe main utility of the library is converting between the linear\nrepresentation of a permutation and a sequence of swaps.  This\nallows, for instance, applying a permutation or its inverse\nto an array with O(1) memory use.\n\nMuch of the interface for the library is based on the permutation\nand combination functions in the GNU Scientific Library (GSL).\n";
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