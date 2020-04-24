{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tree-monad"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "sebf@informatik.uni-kiel.de";
      author = "Sebastian Fischer";
      homepage = "http://github.com/sebfisch/tree-monad";
      url = "";
      synopsis = "Non-Determinism Monad for Tree Search";
      description = "This Haskell library provides an implementation of the MonadPlus\ntype class that represents the search space as a tree whose\nconstructors represent mzero, return, and mplus.";
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