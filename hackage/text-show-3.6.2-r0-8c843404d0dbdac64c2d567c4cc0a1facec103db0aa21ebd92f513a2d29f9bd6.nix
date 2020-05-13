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
    flags = {
      developer = false;
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "text-show"; version = "3.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show";
      url = "";
      synopsis = "Efficient conversion of values into Text";
      description = "@text-show@ offers a replacement for the @Show@ typeclass intended\nfor use with @Text@ instead of @String@s. This package was created\nin the spirit of\n@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@.\n\nAt the moment, @text-show@ provides instances for most data\ntypes in the @<http://hackage.haskell.org/package/array array>@,\n@<http://hackage.haskell.org/package/base base>@,\n@<http://hackage.haskell.org/package/bytestring bytestring>@, and\n@<http://hackage.haskell.org/package/text text>@ packages.\nTherefore, much of the source code for @text-show@ consists of\nborrowed code from those packages in order to ensure that the\nbehaviors of @Show@ and @TextShow@ coincide.\n\nFor most uses, simply importing \"TextShow\"\nwill suffice:\n\n@\nmodule Main where\n\nimport TextShow\n\nmain :: IO ()\nmain = printT (Just \\\"Hello, World!\\\")\n@\n\nIf you desire it, there are also monomorphic versions of the @showb@\nfunction available in the submodules of \"TextShow\". See the\n<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>\npage for more information.\n\nSupport for automatically deriving @TextShow@ instances can be found\nin the \"TextShow.TH\" and \"TextShow.Generic\" modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (if flags.template-haskell-2-11
          then [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ])) ++ (if flags.new-functor-classes
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = ((([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."deriving-compat" or (errorHandler.buildDepError "deriving-compat"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (if flags.template-haskell-2-11
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
              ]
            else [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              ])) ++ [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]) ++ (pkgs.lib).optional (!flags.developer) (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = ((([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (if flags.template-haskell-2-11
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
              ]
            else [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              ])) ++ (if flags.new-functor-classes
            then [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ])) ++ (pkgs.lib).optional (!flags.developer) (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"));
          buildable = if compiler.isGhc && (compiler.version).lt "7.4"
            then false
            else true;
          };
        };
      };
    }