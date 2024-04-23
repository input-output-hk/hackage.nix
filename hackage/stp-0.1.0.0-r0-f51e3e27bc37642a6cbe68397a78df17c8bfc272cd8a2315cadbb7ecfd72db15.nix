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
      identifier = { name = "stp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Boro Sitnikovski";
      maintainer = "buritomath@gmail.com";
      author = "Boro Sitnikovski";
      homepage = "https://github.com/bor0/stp";
      url = "";
      synopsis = "Simple Theorem Prover";
      description = "Simple Theorem Prover constructs a proof tree\nand searches for a target/conclusion given a\nlist of rewrite rules and axioms/theorems.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "mu-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."stp" or (errorHandler.buildDepError "stp"))
          ];
          buildable = true;
        };
      };
    };
  }