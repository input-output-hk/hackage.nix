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
      specVersion = "2.2";
      identifier = { name = "hkd"; version = "0.2"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019 Edward Kmett, 2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Edward Kmett <ekmett@gmail.com>";
      homepage = "https://github.com/ekmett/codex/tree/master/hkd#readme";
      url = "";
      synopsis = "\"higher-kinded data\"";
      description = "\"Higher-kinded data\" utilities, e.g.\n\n@\nclass FFunctor t where\n\\    ffmap :: (f ~> g) -> t f -> t g\n@\n\nand other classes and types.\n\n/Note:/ this package is experimental.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."some" or (errorHandler.buildDepError "some"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
        };
      tests = {
        "example-np" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hkd" or (errorHandler.buildDepError "hkd"))
            ];
          buildable = true;
          };
        "example-record" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hkd" or (errorHandler.buildDepError "hkd"))
            (hsPkgs."some" or (errorHandler.buildDepError "some"))
            ];
          buildable = true;
          };
        "example-issue-12" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hkd" or (errorHandler.buildDepError "hkd"))
            ];
          buildable = true;
          };
        };
      };
    }