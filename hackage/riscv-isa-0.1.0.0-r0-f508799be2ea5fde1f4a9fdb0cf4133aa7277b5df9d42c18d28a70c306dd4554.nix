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
      identifier = { name = "riscv-isa"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016 Moritz Kiefer";
      maintainer = "value";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/riscv-isa#readme";
      url = "";
      synopsis = "Haskell representation of the RISC-V instruction set architecture";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
      tests = {
        "riscv-isa-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."riscv-isa" or (errorHandler.buildDepError "riscv-isa"))
          ];
          buildable = true;
        };
      };
    };
  }