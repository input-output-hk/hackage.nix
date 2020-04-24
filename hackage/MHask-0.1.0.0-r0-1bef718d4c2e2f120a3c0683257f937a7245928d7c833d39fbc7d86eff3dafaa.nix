{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "MHask"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/MHask#readme";
      url = "";
      synopsis = "The category of monads";
      description = "MHask is the category where\n\n* The objects are Haskell types of kind (* -> *) that have an instance of Monad\n* An arrow from object m to object n is a Haskell function of the form (forall x. m x -> n x)\n* Arrow composition is merely a specialization of Haskell function composition\n* The identity arrow for the object m is the id function in Haskell, specialized to (forall x. m x -> m x)\n\nFunctor should actually be called Endofunctor, because if m is an object in MHask,\nthen an instance t of Functor can transform object m into object (t m).\nYou will see *a lot* of constraints in the type classes defined herein.\nThough daunting at first, you will soon realize that they are *all* Prelude.Monad constraints,\nand their interpretation is simply a guarantee that\n\"the objects of MHask are types of kind (* -> *) that have an instance of Monad.\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }