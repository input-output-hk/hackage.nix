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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "purekell"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 philippedev101";
      maintainer = "philippedev101";
      author = "philippedev101";
      homepage = "https://github.com/philippedev101/purekell#readme";
      url = "";
      synopsis = "Bidirectional Haskell/PureScript expression translator";
      description = "Parses Haskell and PureScript expressions into a shared AST, then\nprints them back in either language with correct syntax. Handles\ndivergent syntax like record access, tuples, cons patterns, and\nrecord field separators. Designed for translating typeclass instance\nmethod bodies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "purekell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."purekell" or (errorHandler.buildDepError "purekell"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
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