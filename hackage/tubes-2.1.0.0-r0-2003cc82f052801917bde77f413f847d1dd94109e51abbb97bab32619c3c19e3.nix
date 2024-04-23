{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tubes"; version = "2.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2015";
      maintainer = "gatlin@niltag.net";
      author = "Gatlin C Johnson";
      homepage = "https://github.com/gatlin/tubes";
      url = "";
      synopsis = "Write stream processing computations with side effects in a series of\ntubes.";
      description = "This package provides the @Tube@ monad transformer, allowing any monad\ncomputation to become a stream processing pipeline. A computation of type\n@Tube a b m r@ consumes values of type 'a' and produces values of type\n'b'.\n\nSpecialized @Tube@s exist which allow for stream branching, merging, and\nother non-linear control. These are @Source@, @Sink@, and @Channel@.\n\nAlso provided are @Pump@s, the comonadic dual to @Tube@s. Examples are\nprovided of how they can be used with @Tube@s but we have almost certainly\nonly scratched the surface.\n\nExamples and more information may be found at\n<https://github.com/gatlin/tubes>.\n\nI seem to have trouble uploading packages where the documentation can be\nbuilt correctly on Hackage. If I have (once again) messed this up, you can\nfind Haddock documentation at <https://niltag.net/tubes>. I apologize for\nany inconvenience!\n\nThis should compile on GHC 7.8, but the problem\nis that previous attempts at setting the versions properly rendered Hackage\nunable to generate documentation. Hopefully I have this fixed but any\nadvice is welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
    };
  }