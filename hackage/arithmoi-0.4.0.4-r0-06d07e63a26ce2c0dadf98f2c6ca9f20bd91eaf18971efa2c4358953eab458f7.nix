{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "arithmoi"; version = "0.4.0.4"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "Daniel Fischer <daniel.is.fischer@googlemail.com>";
      author = "Daniel Fischer";
      homepage = "https://bitbucket.org/dafis/arithmoi";
      url = "";
      synopsis = "Efficient basic number-theoretic functions.\nPrimes, powers, integer logarithms.";
      description = "A library of basic functionality needed for\nnumber-theoretic calculations. The aim of this library\nis to provide efficient implementations of the functions.\nPrimes and related things (totients, factorisation),\npowers (integer roots and tests, modular exponentiation),\ninteger logarithms.\nNote: Requires GHC >= 6.12 with the integer-gmp package\nfor efficiency. Portability is on the to-do list (with\nlow priority, however).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }