{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      containers = true;
      contravariant = true;
      distributive = true;
      comonad = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "semigroupoids"; version = "4.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/semigroupoids";
      url = "";
      synopsis = "Semigroupoids: Category sans id";
      description = "Provides a wide array of (semi)groupoids and operations for working with them.\n\nA 'Semigroupoid' is a 'Category' without the requirement of identity arrows for every object in the category.\n\nA 'Category' is any 'Semigroupoid' for which the Yoneda lemma holds.\n\nWhen working with comonads you often have the @\\<*\\>@ portion of an @Applicative@, but\nnot the @pure@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"\nin the form of the @ComonadZip@ class in the days before @Applicative@. Apply provides a weaker invariant, but for the comonads used for data flow programming (found in the streams package), this invariant is preserved. Applicative function composition forms a semigroupoid.\n\nSimilarly many structures are nearly a comonad, but not quite, for instance lists provide a reasonable 'extend' operation in the form of 'tails', but do not always contain a value.\n\nIdeally the following relationships would hold:\n\n> Foldable ----> Traversable <--- Functor ------> Alt ---------> Plus           Semigroupoid\n>      |               |            |                              |                  |\n>      v               v            v                              v                  v\n> Foldable1 ---> Traversable1     Apply --------> Applicative -> Alternative      Category\n>                                   |               |              |                  |\n>                                   v               v              v                  v\n>                                 Bind ---------> Monad -------> MonadPlus          Arrow\n>\n\nApply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.\n\nThis lets us remove many of the restrictions from various monad transformers\nas in many cases the binding operation or @\\<*\\>@ operation does not require them.\n\nFinally, to work with these weaker structures it is beneficial to have containers\nthat can provide stronger guarantees about their contents, so versions of 'Traversable'\nand 'Foldable' that can be folded with just a 'Semigroup' are added.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.containers) (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))) ++ (pkgs.lib).optional (flags.contravariant) (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))) ++ (pkgs.lib).optional (flags.distributive) (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"));
        buildable = true;
        };
      };
    }