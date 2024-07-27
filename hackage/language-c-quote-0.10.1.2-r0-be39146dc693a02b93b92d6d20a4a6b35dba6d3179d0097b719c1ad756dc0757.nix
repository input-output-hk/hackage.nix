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
      identifier = { name = "language-c-quote"; version = "0.10.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2013 Geoffrey Mainland\n(c) 2013 Manuel M. T. Chakravarty\n(c) 2013-2014 Drexel University";
      maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      homepage = "http://www.cs.drexel.edu/~mainland/";
      url = "";
      synopsis = "C/CUDA/OpenCL/Objective-C quasiquoting library.";
      description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions as well as the entire Objective-C\nlanguage.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exception-mtl" or (errorHandler.buildDepError "exception-mtl"))
          (hsPkgs."exception-transformers" or (errorHandler.buildDepError "exception-transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."mainland-pretty" or (errorHandler.buildDepError "mainland-pretty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        build-tools = pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.4") [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.4") [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-c-quote" or (errorHandler.buildDepError "language-c-quote"))
            (hsPkgs."srcloc" or (errorHandler.buildDepError "srcloc"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }