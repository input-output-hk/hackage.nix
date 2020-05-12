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
    flags = { static = false; static-cxx = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "twee"; version = "2.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicsma@chalmers.se";
      author = "Nick Smallbone";
      homepage = "http://github.com/nick8325/twee";
      url = "";
      synopsis = "An equational theorem prover";
      description = "Twee is an experimental equational theorem prover based on\nKnuth-Bendix completion.\n\nGiven a set of equational axioms and a set of equational\nconjectures it will try to prove the conjectures.\nIt will terminate if the conjectures are true but normally\nfail to terminate if they are false.\n\nThe input problem should be in TPTP format (see\nhttp://www.tptp.org). You can use types and quantifiers, but apart\nfrom that the problem must be equational.";
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
            ];
          buildable = true;
          };
        };
      };
    }