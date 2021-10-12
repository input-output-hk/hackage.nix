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
    flags = { error_message_tests = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "dependent-literals-plugin"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2019-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Andrew Pritchard <awpr@google.com>";
      homepage = "https://github.com/google/hs-dependent-literals#readme";
      url = "";
      synopsis = "Rewrites integer literals to a pseudo-dependently-typed form.";
      description = "This plugin implements pseudo-dependently-typed integer literals.\n\nThis means the value of an integer literal is available at the type level,\nand can be used for things like validation or type inference.  For example,\nthe 'SInt' instance refines unknown type-level 'Nat' variables to the\nparticular literal value, and the 'Fin' instance emits compile-time errors\nfor out-of-range values.  So, given\n@mkVec :: SInt n -> (Fin n -> a) -> Vec n a@, @mkVec 4@ will have type\n@(Fin 4 -> a) -> Vec 4 a@, and trying to type-check @4 :: Fin 4@ will report\na type error saying that @4@ is out of range.\n\nPatterns get a similar treatment, too, so\n@case (x :: SInt n) of { 1 -> Just Refl; _ -> Nothing } :: Maybe (n :~: 1)@\ncan type-check: the act of matching against 1 proved that the type-level @n@\nwas equal to 1, so 'Refl' can type-check as @n :~: 1@.\n\nTo use this, enable the extensions @DataKinds@, @FlexibleContexts@,\n@ViewPatterns@, and @TypeApplications@, add @dependent-literals@ and\n@dependent-literals-plugin@ to your package's dependencies, and add\n@-fplugin=DependentLiterals.Plugin@ to @ghc-options@ to enable the plugin\nglobally, or use @OPTIONS_GHC@ pragmas to enable the plugin on a per-module\nbasis.  \\\"Normal\\\" integral types should still behave as normal, but literals\nand numeric patterns will become supported for 'SInt' and 'Fin', and will\nprovide additional information to the type checker automatically.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "FinErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        "IntErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        "Plugin-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = true;
          };
        "PolyErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        "SIntErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        "SNumberErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        "WordErrors-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dependent-literals" or (errorHandler.buildDepError "dependent-literals"))
            (hsPkgs."dependent-literals-plugin" or (errorHandler.buildDepError "dependent-literals-plugin"))
            (hsPkgs."fin-int" or (errorHandler.buildDepError "fin-int"))
            (hsPkgs."numeric-kinds" or (errorHandler.buildDepError "numeric-kinds"))
            (hsPkgs."short-vec" or (errorHandler.buildDepError "short-vec"))
            (hsPkgs."sint" or (errorHandler.buildDepError "sint"))
            (hsPkgs."snumber" or (errorHandler.buildDepError "snumber"))
            (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
            ];
          buildable = if !flags.error_message_tests then false else true;
          };
        };
      };
    }