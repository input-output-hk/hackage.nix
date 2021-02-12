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
      identifier = { name = "language-c-quote"; version = "0.3.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2012 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "C/CUDA/OpenCL quasiquoting library.";
      description = "This package provides a general parser for the C language, including most GCC\nextensions and some CUDA and OpenCL extensions.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
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
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.0" && (compiler.isGhc && (compiler.version).lt "7.2")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.4" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        build-tools = (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4") [
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
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
            ];
          buildable = true;
          };
        };
      };
    }