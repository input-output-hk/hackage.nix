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
    flags = { llvm = false; bounds-checks = false; profile = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "twee-lib"; version = "2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "http://github.com/nick8325/twee";
      url = "";
      synopsis = "An equational theorem prover";
      description = "Twee is an experimental equational theorem prover based on\nKnuth-Bendix completion.\n\nGiven a set of equational axioms and a set of equational\nconjectures it will try to prove the conjectures.\nIt will terminate if the conjectures are true but normally\nfail to terminate if they are false.\n\nThe input problem should be in TPTP format (see\nhttp://www.tptp.org). You can use types and quantifiers, but apart\nfrom that the problem must be equational.\n\nThis package contains only the library part of twee.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."uglymemo" or (errorHandler.buildDepError "uglymemo"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ] ++ pkgs.lib.optionals (flags.profile) [
          (hsPkgs."symbol" or (errorHandler.buildDepError "symbol"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."rdtsc" or (errorHandler.buildDepError "rdtsc"))
        ];
        buildable = true;
      };
    };
  }