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
      identifier = { name = "AspectAG"; version = "0.5.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García Garland, Marcos Viera";
      homepage = "http://www.fing.edu.uy/~jpgarcia/AspectAG";
      url = "";
      synopsis = "Strongly typed Attribute Grammars implemented using type-level programming.";
      description = "An EDSL implementing strongly typed -and strongly kinded!- attribute grammars\nimplemented using type-level programming. We make an effort to encode precise EDSL\ntype errors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-strict-compat" or (errorHandler.buildDepError "th-strict-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }