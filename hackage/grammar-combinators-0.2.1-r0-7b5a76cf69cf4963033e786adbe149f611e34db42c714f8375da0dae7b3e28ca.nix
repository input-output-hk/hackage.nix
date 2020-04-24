{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.1";
      identifier = { name = "grammar-combinators"; version = "0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Dominique Devriese <dominique.devriese@gmail.com>";
      author = "Dominique Devriese <dominique.devriese@gmail.com>";
      homepage = "http://projects.haskell.org/grammar-combinators/";
      url = "";
      synopsis = "A parsing library of context-free grammar combinators.";
      description = "The grammar-combinators library is a novel parsing library using\nan explicit representation of recursion to provide various novel\nfeatures, for grammar analysis, transformation and parsing\nfunctionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."multirec" or ((hsPkgs.pkgs-errors).buildDepError "multirec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."enumerable" or ((hsPkgs.pkgs-errors).buildDepError "enumerable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."MaybeT" or ((hsPkgs.pkgs-errors).buildDepError "MaybeT"))
          (hsPkgs."uu-parsinglib" or ((hsPkgs.pkgs-errors).buildDepError "uu-parsinglib"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          ];
        buildable = true;
        };
      };
    }