{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "predicate-transformers"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edmundnoble@gmail.com";
      author = "Edmund Noble";
      homepage = "";
      url = "";
      synopsis = "A library for writing predicates and transformations over predicates in Haskell";
      description = "This package provides ways to write predicates such that they compose nicely and are easy to debug.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
          ];
        buildable = true;
        };
      };
    }