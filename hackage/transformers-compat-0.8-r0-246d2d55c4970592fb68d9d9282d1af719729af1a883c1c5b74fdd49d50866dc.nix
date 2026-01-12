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
    flags = {
      five = false;
      five-three = true;
      mtl = true;
      generic-deriving = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "transformers-compat"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012-2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "https://github.com/ekmett/transformers-compat/";
      url = "";
      synopsis = "A small compatibility shim for the transformers library";
      description = "This package includes backported versions of types that were added to\n@transformers@ in @transformers-0.5@ for users who need strict\n@transformers-0.5@ compatibility, but also need those types.\n\nThose users should be able to just depend on @transformers >= 0.5@ and\n@transformers-compat >= 0.7.3@.\n\nNote: missing methods are not supplied, but this at least permits the types to be used.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ]) ++ [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }