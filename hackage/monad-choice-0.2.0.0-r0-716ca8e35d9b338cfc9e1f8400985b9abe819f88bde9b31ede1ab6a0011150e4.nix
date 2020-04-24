{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monad-choice"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2020 Eamon Olive, Louis Hyde";
      maintainer = "ejolive97@gmail.com";
      author = "Eamon Olive, Louis Hyde";
      homepage = "https://gitlab.com/e-neighborhood-watch/monad-choice#readme";
      url = "";
      synopsis = "Monad, monad transformer, and typeclass representing choices.";
      description = "The Monad Choice library contains monads, monad transformers, and a typeclass representing a sequence of choices of objects of arbitrary types where future choices can depend on previous ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."invariant" or ((hsPkgs.pkgs-errors).buildDepError "invariant"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }