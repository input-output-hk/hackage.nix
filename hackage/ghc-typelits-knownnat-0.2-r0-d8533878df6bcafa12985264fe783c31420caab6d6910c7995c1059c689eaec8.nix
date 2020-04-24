{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { deverror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-typelits-knownnat"; version = "0.2"; };
      license = "BSD-2-Clause";
      copyright = "Copyright © 2016 University of Twente";
      maintainer = "christiaan.baaij@gmail.com";
      author = "Christiaan Baaij";
      homepage = "http://clash-lang.org/";
      url = "";
      synopsis = "Derive KnownNat constraints from other KnownNat constraints";
      description = "A type checker plugin for GHC that can derive \\\"complex\\\" @KnownNat@\nconstraints from other simple/variable @KnownNat@ constraints. i.e. without\nthis plugin, you must have both a @KnownNat n@ and a @KnownNat (n+2)@\nconstraint in the type signature of the following function:\n\n@\nf :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nUsing the plugin you can omit the @KnownNat (n+2)@ constraint:\n\n@\nf :: forall n . KnownNat n => Proxy n -> Integer\nf _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))\n@\n\nThe plugin can derive @KnownNat@ constraints for types consisting of:\n\n* Type variables, when there is a corresponding @KnownNat@ constraint\n\n* Type-level naturals\n\n* Applications of the arithmetic expression: +,-,*,^\n\n* Type functions, when there is either:\n\n1. a matching given @KnownNat@ constraint; or\n\n2. a corresponding @KnownNat\\<N\\>@ instance for the type function\n\nTo use the plugin, add the\n\n@\nOPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver\n@\n\nPragma to the header of your file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-ghc-typelits-knownnat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }