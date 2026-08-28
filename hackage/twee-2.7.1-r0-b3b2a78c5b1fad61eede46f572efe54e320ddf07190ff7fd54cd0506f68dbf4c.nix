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
    flags = { static = false; parallel = false; rtsopts = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "twee"; version = "2.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "https://twee.smallbone.se";
      url = "";
      synopsis = "An equational theorem prover";
      description = "Twee is an experimental equational theorem prover based on\nKnuth-Bendix completion.\n\nGiven a set of equational axioms and a set of equational\nconjectures it will try to prove the conjectures.\nIt will terminate if the conjectures are true but normally\nfail to terminate if they are false.\n\nThe input problem should be in TPTP format (see\nhttps://www.tptp.org). You can use types and quantifiers, but apart\nfrom that the problem must be equational.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "twee" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."twee-lib" or (errorHandler.buildDepError "twee-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."jukebox" or (errorHandler.buildDepError "jukebox"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "twee-lpo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."twee-lib" or (errorHandler.buildDepError "twee-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."jukebox" or (errorHandler.buildDepError "jukebox"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "parallel-twee" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."twee-lib" or (errorHandler.buildDepError "twee-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."jukebox" or (errorHandler.buildDepError "jukebox"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = if !flags.parallel then false else true;
        };
      };
      tests = {
        "twee-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."twee-lib" or (errorHandler.buildDepError "twee-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }