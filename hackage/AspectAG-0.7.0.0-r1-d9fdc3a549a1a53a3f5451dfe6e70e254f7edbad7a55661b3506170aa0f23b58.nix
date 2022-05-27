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
      identifier = { name = "AspectAG"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García Garland, Marcos Viera";
      homepage = "www.fing.edu.uy/~jpgarcia/AspectAG";
      url = "";
      synopsis = "Strongly typed Attribute Grammars implemented using type-level programming.";
      description = "An EDSL implementing strongly typed -and strongly kinded!- attribute grammars\nimplemented using type-level programming. We make an effort to encode precise EDSL\ntype errors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."poly-rec" or (errorHandler.buildDepError "poly-rec"))
          (hsPkgs."requirements" or (errorHandler.buildDepError "requirements"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."loch-th" or (errorHandler.buildDepError "loch-th"))
          ];
        buildable = true;
        };
      };
    }