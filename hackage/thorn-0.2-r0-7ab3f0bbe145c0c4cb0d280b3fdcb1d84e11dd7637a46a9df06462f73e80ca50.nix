{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = { name = "thorn"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Yusuke Matsushita";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/Thorn";
      url = "";
      synopsis = "Datatype Manipulation with Template Haskell";
      description = "Thorn generates\n\n* functors from various kinds of datatypes, regardless of arity or variances.\n\n* folds and unfolds from various kinds of recursive datatypes, including mutually recursive ones.\n\nA single function of Thorn will give you a lot. Just try it.\n\nThe haddock is here. <http://kinokkory.github.io/Thorn/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }