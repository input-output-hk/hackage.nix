{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lattices"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2015 Maximilian Bolingbroke";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Maximilian Bolingbroke <batterseapower@hotmail.com>";
      homepage = "http://github.com/phadej/lattices/";
      url = "";
      synopsis = "Fine-grained library for constructing and manipulating lattices";
      description = "In mathematics, a lattice is a partially ordered set in which every two elements have a unique supremum (also called a least upper bound or @join@) and a unique infimum (also called a greatest lower bound or @meet@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }