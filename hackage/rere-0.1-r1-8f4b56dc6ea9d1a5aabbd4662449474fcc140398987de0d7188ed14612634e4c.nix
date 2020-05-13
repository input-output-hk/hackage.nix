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
    flags = { rere-cfg = true; rere-intersection = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rere"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Regular-expressions extended with fixpoints for context-free powers";
      description = "By extending regular expressions with (explicit) fixed points\nwe can recognize context-free grammars.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.rere-cfg && (compiler.isGhc && (compiler.version).ge "7.8")) [
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."rere" or (errorHandler.buildDepError "rere"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.4")
            then false
            else true;
          };
        };
      benchmarks = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."derp" or (errorHandler.buildDepError "derp"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."rere" or (errorHandler.buildDepError "rere"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
          buildable = if !(compiler.isGhc && (compiler.version).ge "7.4")
            then false
            else true;
          };
        "json" = {
          depends = ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."derp" or (errorHandler.buildDepError "derp"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."rere" or (errorHandler.buildDepError "rere"))
            (hsPkgs."vec" or (errorHandler.buildDepError "vec"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (errorHandler.buildDepError "void"));
          buildable = if !(flags.rere-cfg && (compiler.isGhc && (compiler.version).ge "7.8"))
            then false
            else true;
          };
        };
      };
    }