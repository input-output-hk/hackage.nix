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
      identifier = { name = "MicroHs"; version = "0.8"; };
      license = "Apache-2.0";
      copyright = "2023 Lennart Augustsson";
      maintainer = "lennart@augustsson.net";
      author = "lennart@augustsson.net";
      homepage = "";
      url = "";
      synopsis = "A compiler for a subset of Haskell";
      description = "A compiler for a subset of Haskell.\nThe compiler translates to combinators and can compile itself.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mhs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }