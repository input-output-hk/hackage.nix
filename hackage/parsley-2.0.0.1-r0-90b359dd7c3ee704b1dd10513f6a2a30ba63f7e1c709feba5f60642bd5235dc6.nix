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
      identifier = { name = "parsley"; version = "2.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jamie Willis <j.willis19@imperial.ac.uk>";
      author = "Jamie Willis, Parsley Contributors";
      homepage = "https://github.com/j-mie6/ParsleyHaskell/tree/master/parsley";
      url = "";
      synopsis = "A fast parser combinator library backed by Typed Template Haskell";
      description = "Parsley is a staged selective parser combinator library, which means\nit does not support monadic operations, and relies on Typed Template\nHaskell to generate very fast code. Currently there are no error messages\nbut there are plans for this in the works.\n\nBased on the work found in [/Staged Selective Parser Combinators/\n(Willis et al. 2020)](https://dl.acm.org/doi/10.1145/3409002)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsley-core" or (errorHandler.buildDepError "parsley-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "parsley-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsley" or (errorHandler.buildDepError "parsley"))
            (hsPkgs."parsley-core" or (errorHandler.buildDepError "parsley-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."th-test-utils" or (errorHandler.buildDepError "th-test-utils"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ pkgs.lib.optional (false && (compiler.isGhc && compiler.version.lt "9")) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
        "regression-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsley" or (errorHandler.buildDepError "parsley"))
            (hsPkgs."parsley-core" or (errorHandler.buildDepError "parsley-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."th-test-utils" or (errorHandler.buildDepError "th-test-utils"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ pkgs.lib.optional (false && (compiler.isGhc && compiler.version.lt "9")) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"));
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")))
          ];
          buildable = true;
        };
      };
    };
  }