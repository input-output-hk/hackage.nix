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
      identifier = { name = "boltzmann-brain"; version = "1.3.1.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Maciej Bendkowski";
      maintainer = "maciej.bendkowski@tcs.uj.edu.pl";
      author = "Maciej Bendkowski";
      homepage = "https://github.com/maciej-bendkowski/boltzmann-brain";
      url = "";
      synopsis = "Boltzmann sampler compiler for combinatorial systems.";
      description = "Boltzmann Brain is a combinatorial system sampler compiler.\nUsing an easy and intuitive specification input representing a\ncombinatorial system, Boltzmann Brain constructs a working,\nself-contained module implementing a dedicated singular,\nrejection-based Boltzmann sampler with some additional\ncontrol over the constructor frequencies in the generated structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."multiset" or (errorHandler.buildDepError "multiset"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "bb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."boltzmann-brain" or (errorHandler.buildDepError "boltzmann-brain"))
            ];
          buildable = true;
          };
        };
      };
    }