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
      identifier = { name = "array-primops"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 András Kovács";
      maintainer = "puttamalac@gmail.com";
      author = "András Kovács";
      homepage = "";
      url = "";
      synopsis = "Extra foreign primops for primitive arrays";
      description = "Boxed arrays cannot be allocated without initialization, because in that case the garbage collector would try to follow wild pointers. This is a source of inefficiency; quite a few operations must allocate a new array, initialize it, then overwrite the initial elements with the actually relevant data. This package provides low-level primitives for doing such operations without superfluous copying. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.8") [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.10") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array-primops" or (errorHandler.buildDepError "array-primops"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."array-primops" or (errorHandler.buildDepError "array-primops"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }