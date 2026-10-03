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
    flags = { doctest = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "either-n"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2026 Tony Morris";
      maintainer = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ> <dibblego>";
      homepage = "https://gitlab.com/tonymorris/either-n";
      url = "";
      synopsis = "Data types like Either but with more constructors";
      description = "<<https://logo.systemf.com.au/systemf-450x450.png>>\n\nData types like @Either@ but with more constructors, and optics for the\nconstructors of any sum type.\n\n== @Either3@\n\n@Either3 a b c@ is a value of one of three types, with the constructors\n@First3@, @Second3@ and @Third3@. The @Functor@, @Applicative@ and @Monad@\ninstances act on the third type parameter, so @First3@ and @Second3@\nshort-circuit, in the same way @Left@ does for @Either@.\n\n== @Either3T@\n\n@Either3T f a b c@ is an @Either3@ inside a type constructor @f@, in the\nsame way that @ExceptT e m a@ is @m (Either e a)@. Use @_Wrapped@ to convert\nbetween @Either3T f a b c@ and @f (Either3 a b c)@. The @mtl@ classes are\nlifted from @f@.\n\n== Injections\n\n@Data.Lens.Injection@ provides the classes @Injection1@ to @Injection19@,\nthe sum-type duals of @Field1@ to @Field19@ from @lens@. Where @_1@ is a lens\nto the first field of a product, @_I1@ is a prism to the first constructor\nof a sum. Each class has a default implementation for any type with a\n@Generic@ instance.";
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
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."assoc" or (errorHandler.buildDepError "assoc"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hedgehog-fn" or (errorHandler.buildDepError "hedgehog-fn"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
            (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
            (hsPkgs."either-n" or (errorHandler.buildDepError "either-n"))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."either-n" or (errorHandler.buildDepError "either-n"))
          ];
          buildable = if !flags.doctest then false else true;
        };
      };
    };
  }