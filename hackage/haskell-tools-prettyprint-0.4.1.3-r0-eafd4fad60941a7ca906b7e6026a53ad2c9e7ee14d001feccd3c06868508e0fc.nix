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
      identifier = { name = "haskell-tools-prettyprint"; version = "0.4.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Pretty printing of Haskell-Tools AST";
      description = "Converts the Haskell-Tools AST to text. Prepares the AST for this conversion. If the AST was created from the GHC AST this pretty printing will result in the original source code. Generated AST parts will get the default formatting. Works using the source annotations that are present in the AST. Creates a rose tree first to simplify the conversion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."references" or (errorHandler.buildDepError "references"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."haskell-tools-ast" or (errorHandler.buildDepError "haskell-tools-ast"))
          ];
        buildable = true;
        };
      };
    }