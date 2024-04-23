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
      identifier = { name = "universe-instances-extended"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Universe instances for types from selected extra packages";
      description = "A class for finite and recursively enumerable types and some helper functions for enumerating them\ndefined in @universe-base@ package:\n\n@\nclass Universe a where universe :: [a]\nclass Universe a => Finite a where universeF :: [a]; universeF = universe\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."universe-base" or (errorHandler.buildDepError "universe-base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "8.6.1") (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0.1") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0.1") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
        ];
        buildable = true;
      };
    };
  }