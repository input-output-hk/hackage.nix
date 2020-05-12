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
      specVersion = "0";
      identifier = { name = "pesca"; version = "4.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Aarne Ranta <http://www.cs.chalmers.se/~aarne/>";
      author = "Aarne Ranta";
      homepage = "http://www.cs.chalmers.se/~aarne/pesca/";
      url = "";
      synopsis = "Proof Editor for Sequent Calculus";
      description = "Pesca is a program that helps in the construction of proofs\nin sequent calculus. It works both as a proof editor and as an automatic theorem\nprover. Proofs constructed in Pesca can both be seen on the terminal and printed\ninto LaTeX files.\n\nThe user of Pesca can choose among different versions of classical and\nintuitionistic proposition and predicate calculi, and extend them by systems of\nnonlogical axioms. The implementation of Pesca is written in the\nfunctional programming language Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pesca" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }