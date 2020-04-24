{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "funcons-values"; version = "0.1.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen and Neil Sculthorpe";
      homepage = "http://plancomps.org";
      url = "";
      synopsis = "Library providing values and operations on values in a fixed universe.";
      description = "The PLanCompS project (<http://plancomps.org>) has developed a component-based approach to formal semantics.\nThe semantics of a language is defined by translating its constructs to combinations\nof `fundamental constructs' called /funcons/.\n\nThis package provides a fixed universe types, values and operations which are lifted to funcons as part of the /funcons-tools/ package (<http://hackage.haskell.org/package/funcons-tools>).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bv" or ((hsPkgs.pkgs-errors).buildDepError "bv"))
          (hsPkgs."multiset" or ((hsPkgs.pkgs-errors).buildDepError "multiset"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }