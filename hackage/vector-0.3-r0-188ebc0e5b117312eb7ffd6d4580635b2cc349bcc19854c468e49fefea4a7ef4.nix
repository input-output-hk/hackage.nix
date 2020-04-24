{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { enableassertions = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "vector"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Roman Leshchinskiy 2008";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy";
      homepage = "http://darcs.haskell.org/vector";
      url = "";
      synopsis = "Efficient Arrays";
      description = "\nAn efficient but highly experimental implementation of Int-indexed\narrays with a powerful loop fusion framework.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }