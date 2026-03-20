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
      specVersion = "3.0";
      identifier = { name = "monad-rail"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ismaelcarlosvelten@gmail.com";
      author = "Ismael Carlos Velten";
      homepage = "";
      url = "";
      synopsis = "Railway-oriented error handling for Haskell";
      description = "Monad.Rail is a Haskell library for Railway-Oriented Programming (ROP),\na functional approach to error handling that makes error paths explicit\nand composable.\n\nThe library provides:\n\n* 'RailT' - A monad transformer for building reliable applications\n* Type-safe error handling with support for error accumulation\n* Automatic JSON serialization of errors for logging and monitoring\n* The '<!>' operator for combining validations while collecting all errors\n* Integration with any error type implementing 'HasErrorInfo'\n\nRailway-Oriented Programming separates success and failure paths,\nmaking it easy to handle both cases explicitly. The '<!>' operator\nis particularly useful for validation scenarios where you want to\nreport all validation errors at once rather than stopping at the first failure.\n\nFor more information and examples, see the documentation for \"Monad.Rail\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "monad-rail-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-rail" or (errorHandler.buildDepError "monad-rail"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }