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
      specVersion = "2.4";
      identifier = { name = "coya"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/coya";
      url = "";
      synopsis = "Coya monoids";
      description = "Take some log semiring R. Then, for any two x,y :: R, the following holds:\n\nx ^ log y == y ^ log x == e ^ (log x * log y)\n\nA Coya monoid is some commutative monoid (R, #), where x # y = x ^ log y.\nThe following laws hold:\n\ne # x = x (Left Identity)\n\nx # e = x (Right Identity)\n\n(x # y) # z == x # (y # z) (Associativity)\n\nx # y == y # x (Commutativity)\n\nIf the R is a poset where all elements in R are greater than one, then R\nalso forms a group:\n\nx # (e ^ (1 / log (x))) == x";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          ];
        buildable = true;
        };
      };
    }