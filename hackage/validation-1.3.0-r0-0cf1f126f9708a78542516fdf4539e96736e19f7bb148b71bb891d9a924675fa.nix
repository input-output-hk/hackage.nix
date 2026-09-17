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
      identifier = { name = "validation"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Tony Morris, Nick Partridge\nCopyright (C) 2014,2015 NICTA Limited\nCopyright (c) 2016-2019 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230\nCopyright (c) 2019-2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/system-f/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<https://logo.systemf.com.au/systemf-450x450.png>>\n\nA data type like @Either@ but with an accumulating @Applicative@ instance.\n\n== @Validation@\n\nThe @Validation@ data type is isomorphic to @Either@, but has an instance\nof @Applicative@ that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a @Semigroup@\noperation.\n\nAs a consequence of this @Applicative@ instance, there is no corresponding\n@Bind@ or @Monad@ instance. @Validation@ is an example of, \"An applicative\nfunctor that is not a monad.\"\n\nThe library provides:\n\n* Classy optics (@GetValidation@, @HasValidation@, @ReviewValidation@,\n@AsValidation@) following the conventions of @makeClassy@ and\n@makeClassyPrisms@ from @lens@.\n* Polymorphic prisms (@__Failure@, @__Success@) for type-changing operations.\n* Isomorphisms to @Either@ and @(Bool, a)@.\n\n== @ValidationMonadT@\n\n@ValidationMonadT err m a@ is a monad transformer wrapping @m (Validation err a)@.\nUnlike @Validation@, it has short-circuiting @Applicative@, @Bind@, @Monad@,\nand @MonadError@ instances.\n\n== Validators\n\nFour validator newtypes wrap a validation function with different type\nparameter orders, enabling different class instances:\n\n* @Validator x err a@ — @Bifunctor@, accumulating @Applicative@\n* @ValidatorProfunctor err x a@ — @Profunctor@, accumulating @Applicative@\n* @ValidatorMonadT x err f a@ — @Monad@, @MonadTrans@, @BindTrans@\n* @ValidatorMonadProfunctorT err f x a@ — @Profunctor@, @Monad@, @Category@, @Arrow@\n\nAll four are isomorphic and have cross-type optics instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."validation" or (errorHandler.buildDepError "validation"))
          ];
          buildable = true;
        };
      };
    };
  }