{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "recursion-schemes"; version = "1.8.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/recursion-schemes/";
      url = "";
      synopsis = "Generalized bananas, lenses and barbed wire";
      description = "Generalized bananas, lenses and barbed wire\n\n/Changes since 0.4.2/:\n\n* Added futumorphisms\n\n/Changes since 0.2.2/:\n\n* Split distHisto from distGHisto\n\n* Added zygohistomorphic prepromorphisms\n\n/Changes since 0.2.1/:\n\n* Added (generalized) prepro- and postpro- morphisms\n\n/Changes since 0.2/:\n\n* Added Elgot (co)algebras\n\n/Changes since 0.1/:\n\n* Removed dependency on Foldable from Mendler-style recursion schemes\n\n* Added Lambek's Lemma";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          ];
        buildable = true;
        };
      };
    }