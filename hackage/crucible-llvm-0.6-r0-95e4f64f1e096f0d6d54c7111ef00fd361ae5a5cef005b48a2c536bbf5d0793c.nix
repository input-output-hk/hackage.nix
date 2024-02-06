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
      identifier = { name = "crucible-llvm"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) Galois, Inc 2014-2022";
      maintainer = "rscott@galois.com, kquick@galois.com, langston@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Support for translating and executing LLVM code in Crucible";
      description = "Library providing LLVM-specific extensions to the crucible core library\nfor Crucible-based simulation and verification of LLVM-compiled applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
          (hsPkgs."crucible-symio" or (errorHandler.buildDepError "crucible-symio"))
          (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."itanium-abi" or (errorHandler.buildDepError "itanium-abi"))
          (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "crucible-llvm-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bv-sized" or (errorHandler.buildDepError "bv-sized"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crucible" or (errorHandler.buildDepError "crucible"))
            (hsPkgs."crucible-llvm" or (errorHandler.buildDepError "crucible-llvm"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."llvm-pretty" or (errorHandler.buildDepError "llvm-pretty"))
            (hsPkgs."llvm-pretty-bc-parser" or (errorHandler.buildDepError "llvm-pretty-bc-parser"))
            (hsPkgs."parameterized-utils" or (errorHandler.buildDepError "parameterized-utils"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."what4" or (errorHandler.buildDepError "what4"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-sugar" or (errorHandler.buildDepError "tasty-sugar"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }