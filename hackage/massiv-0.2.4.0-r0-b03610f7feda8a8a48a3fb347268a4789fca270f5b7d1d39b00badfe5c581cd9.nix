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
    flags = { unsafe-checks = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "massiv"; version = "0.2.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Massiv (Массив) is an Array Library.";
      description = "Multi-dimensional Arrays with fusion, stencils and parallel computation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }