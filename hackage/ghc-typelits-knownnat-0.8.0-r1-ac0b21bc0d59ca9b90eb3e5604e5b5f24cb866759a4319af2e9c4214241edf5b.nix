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
    flags = { deverror = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "ghc-typelits-knownnat"; version = "0.8.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2016     , University of Twente,\n            2017-2018, QBayLogic B.V.,\n            2017     , Google Inc.";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://clash-lang.org/";
      url = "";
      synopsis = "Derive KnownNat constraints from other KnownNat constraints";
      description = "A type checker plugin for GHC that can derive \\\"complex\\\" @KnownNat@\nconstraints from other simple/variable @KnownNat@ constraints. i.e. without\nthis plugin, you must have both a @KnownNat n@ and a @KnownNat (n+2)@\nconstraint in the type signature of the following function:\n\n@\nf :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nUsing the plugin you can omit the @KnownNat (n+2)@ constraint:\n\n@\nf :: forall n . KnownNat n => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nThe plugin can derive @KnownNat@ constraints for types consisting of:\n\n* Type variables, when there is a corresponding @KnownNat@ constraint\n\n* Type-level naturals\n\n* Applications of the arithmetic expression: +,-,*,^\n\n* Type functions, when there is either:\n\n        1. a matching given @KnownNat@ constraint; or\n\n        2. a corresponding @KnownNat\\<N\\>@ instance for the type function\n\nTo use the plugin, add the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver\n@\n\nPragma to the header of your file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugin-api" or (errorHandler.buildDepError "ghc-tcplugin-api"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ (if compiler.isGhc && compiler.version.ge "9.0.0"
          then [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ]
          else [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ]);
        buildable = true;
      };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }