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
      base-transformers-1 = true;
      base-transformers-2 = true;
      containers = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "functor-classes-compat"; version = "2.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/functor-classes-compat#readme";
      url = "";
      synopsis = "Data.Functor.Classes instances for core packages";
      description = "\"Data.Functor.Classes\" instances for core packages:\n\n* containers\n\nThis package used to provide instances for @unordered-containers@\nand @vector@, but  these packages are since been upgraded.\nUse @unordered-containers >=0.2.8.0@ and @vector >=0.12@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (if flags.base-transformers-1
          then if flags.base-transformers-2
            then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]
          else if flags.base-transformers-2
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]) ++ [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }