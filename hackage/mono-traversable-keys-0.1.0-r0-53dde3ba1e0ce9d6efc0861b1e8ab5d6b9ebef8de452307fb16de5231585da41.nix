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
      specVersion = "1.12";
      identifier = { name = "mono-traversable-keys"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alex Washburn 2019";
      maintainer = "hackage@recursion.ninja";
      author = "Alex Washburn";
      homepage = "https://github.com/recursion-ninja/mono-traversable-keys#readme";
      url = "";
      synopsis = "Type-classes for interacting with monomorphic containers with a key";
      description = "This is the extension of two other popular packages,\n<http://hackage.haskell.org/package/mono-traversable mono-traversable> and\n<http://hackage.haskell.org/package/keys keys>,\ndesigned to provided the functionality of the @keys@ package to the monomorphic\ncontainers enhanced by the @mono-traversable@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."keys" or (errorHandler.buildDepError "keys"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
        ];
        buildable = true;
      };
    };
  }