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
      specVersion = "1.6";
      identifier = { name = "one-liner"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/one-liner";
      url = "";
      synopsis = "Constraint-based generics";
      description = "Write short and concise generic instances of type classes.\n\nThere are two separate parts: @Generics.OneLiner@ is for\nwriting generic functions using @GHC.Generics@.\nThe other modules show how to implement these same generic\nfunctions with a traversal-style generics type class,\nwithout the use of an intermediate generic representation\ntype.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }