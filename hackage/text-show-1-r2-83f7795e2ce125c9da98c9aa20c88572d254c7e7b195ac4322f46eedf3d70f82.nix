{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "text-show"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014-2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show";
      url = "";
      synopsis = "Efficient conversion of values into Text";
      description = "@text-show@ offers a replacement for the @Show@ typeclass intended\nfor use with @Text@ instead of @String@s. This package was created\nin the spirit of\n@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@.\n\nAt the moment, @text-show@ provides @Show@ instances for most data\ntypes in the @<http://hackage.haskell.org/package/array array>@,\n@<http://hackage.haskell.org/package/base base>@,\n@<http://hackage.haskell.org/package/bytestring bytestring>@, and\n@<http://hackage.haskell.org/package/text text>@ packages.\nTherefore, much of the source code for @text-show@ consists of\nborrowed code from those packages in order to ensure that the\nbehaviors of the two @Show@ typeclasses coincide.\n\nFor most uses, simply importing \"Text.Show.Text\"\nwill suffice:\n\n@\nmodule Main where\n\nimport Data.Text (Text)\nimport Prelude hiding (Show(..), print)\nimport Text.Show.Text\n\nhello :: Text\nhello = show (Just \\\"Hello, World!\\\")\n\nmain :: IO ()\nmain = print hello\n@\n\nIf you desire it, there are also monomorphic versions of the @showb@\nfunction available in the submodules of \"Text.Show.Text\". A naming\nconvention is present in which functions that show different values\ndepending on the precedence end with @Prec@ (e.g., @showbIntPrec@),\nwhereas functions that show the same values regardless of\nprecedence do not end with @Prec@ (e.g., @showbBool@).\n\nSupport for automatically deriving @Show@ instances can be found\nin the \"Text.Show.Text.TH\" and \"Text.Show.Text.Generic\" modules.\nIf you don't know which one to use, use @Text.Show.Text.TH@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ];
        buildable = true;
        };
      tests = {
        "text-show-spec" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
            (hsPkgs."base-orphans" or ((hsPkgs.pkgs-errors).buildDepError "base-orphans"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
            (hsPkgs."generic-deriving" or ((hsPkgs.pkgs-errors).buildDepError "generic-deriving"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            ];
          buildable = true;
          };
        };
      };
    }