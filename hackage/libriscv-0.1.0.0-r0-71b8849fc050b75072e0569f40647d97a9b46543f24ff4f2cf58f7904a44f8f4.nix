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
      specVersion = "2.4";
      identifier = { name = "libriscv"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2022-2024 University of Bremen";
      maintainer = "Group of Computer Architecture <riscv@informatik.uni-bremen.de>";
      author = "Sören Tempel, Tobias Brandt, and Christoph Lüth";
      homepage = "https://github.com/agra-uni-bremen/libriscv";
      url = "";
      synopsis = "A versatile, flexible and executable formal model for the RISC-V architecture.";
      description = "A formal model for the <https://riscv.org/ RISC-V> /Instruction Set Architecture/ (ISA).\nContrary to other Haskell RISC-V ISA models, like <https://github.com/GaloisInc/grift GRIFT>\nor <https://github.com/mit-plv/riscv-semantics riscv-semantics>, LibRISCV is specifically\ntailored to the creation of custom ISA interpreters. To this end, it is designed for\nflexibility, allowing a versatile representation of instruction operands. For example,\ninstruction operands can be <https://en.wikipedia.org/wiki/Satisfiability_modulo_theories SMT>\nexpressions for <https://doi.org/10.48550/arXiv.2404.04132 symbolic execution> of binary code.\n\nLibRISCV abstractly describes instruction semantics using an /Embedded Domain Specific Language/\n(EDSL) with <https://doi.org/10.1145/2887747.2804319 free(r) monads>. This Haskell library\nis intended to build custom interpreters for this free monad. The entry point for this purpose is\nthe 'LibRISCV.Semantics.buildAST' function which obtains the free monad AST based on an entry address.\nThe entry address can be obtained from a provided ELF loader implementation, this \"Loader\" module\nis also responsible for loading binary instructions into a provided memory implementation. Refer to\nprovided example interpreters in the <https://github.com/agra-uni-bremen/libriscv GitHub repository>\nfor practical usage instruction. More detailed information on LibRISCV and its concepts is also\navailable in a <https://doi.org/10.1007/978-3-031-38938-2_2 TFP'23 publication>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."libriscv".components.sublibs.libriscv-internal or (errorHandler.buildDepError "libriscv:libriscv-internal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."melf" or (errorHandler.buildDepError "melf"))
          (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      sublibs = {
        "libriscv-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          ];
          buildable = true;
        };
      };
      exes = {
        "riscv-tiny" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libriscv" or (errorHandler.buildDepError "libriscv"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."libriscv".components.sublibs.libriscv-internal or (errorHandler.buildDepError "libriscv:libriscv-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libriscv" or (errorHandler.buildDepError "libriscv"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bv" or (errorHandler.buildDepError "bv"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }