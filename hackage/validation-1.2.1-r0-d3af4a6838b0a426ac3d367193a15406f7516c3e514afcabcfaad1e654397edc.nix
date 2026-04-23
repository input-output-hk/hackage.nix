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
      identifier = { name = "validation"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Tony Morris, Nick Partridge\nCopyright (C) 2014,2015 NICTA Limited\nCopyright (c) 2016-2019 Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230\nCopyright (c) 2019-2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>, Nick Partridge <nkpart>";
      homepage = "https://github.com/system-f/validation";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "<<https://logo.systemf.com.au/systemf-450x450.png>>\n\nA data type like @Either@ but with an accumulating @Applicative@ instance.\n\n== @Validation@\n\nThe @Validation@ data type is isomorphic to @Either@, but has an instance\nof @Applicative@ that accumulates on the error side. That is to say, if two\n(or more) errors are encountered, they are appended using a @Semigroup@\noperation.\n\nAs a consequence of this @Applicative@ instance, there is no corresponding\n@Bind@ or @Monad@ instance. @Validation@ is an example of, \"An applicative\nfunctor that is not a monad.\"\n\nThe library provides:\n\n* Classy optics (@GetValidation@, @HasValidation@, @ReviewValidation@,\n@AsValidation@, and corresponding classes for @Failure@ and @Success@)\nfollowing the conventions of @makeClassy@ and @makeClassyPrisms@ from @lens@.\n* Polymorphic prisms (@__Failure@, @__Success@) for type-changing operations.\n* Isomorphisms to @Either@ and @(Bool, a)@.\n\n== @Validator@\n\nThe @Validator@ newtype is a profunctor transformer:\n\n@newtype Validator e p x a = Validator (p x (Validation e a))@\n\n@Validator e (->) x a@ is isomorphic to @x -> Validation e a@. The profunctor\nparameter @p@ generalises this to other optic-like contexts such as @Tagged@,\n@Iso@, and @Prism@.\n\nInstances include @Functor@, @Apply@, @Applicative@, @Alt@, @Selective@,\n@Profunctor@, @Strong@, @Choice@, @Semigroupoid@, @Category@, @Arrow@,\n@ArrowApply@, @ArrowChoice@, and @Wrapped@.\n\nThe @Applicative@ instance accumulates errors in parallel (using @Semigroup@),\nwhile @Category@ composition short-circuits on @Failure@ (like monadic bind).\n\nThe library also provides profunctor newtype wrappers (@Iso''@, @Prism''@) that\nallow @Validator@ to be parameterised over monomorphic isos and prisms.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
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
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
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