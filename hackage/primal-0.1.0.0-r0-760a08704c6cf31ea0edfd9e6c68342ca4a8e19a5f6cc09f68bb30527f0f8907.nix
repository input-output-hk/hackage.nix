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
      specVersion = "1.18";
      identifier = { name = "primal"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/primal";
      url = "";
      synopsis = "Primeval world of Haskell.";
      description = "Please see the README on GitHub at <https://github.com/lehins/primal#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "8.6") ((pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.4") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim")));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."primal" or (errorHandler.buildDepError "primal"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }