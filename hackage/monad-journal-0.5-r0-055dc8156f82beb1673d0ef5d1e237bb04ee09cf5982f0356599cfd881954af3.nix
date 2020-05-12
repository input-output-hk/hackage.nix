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
      identifier = { name = "monad-journal"; version = "0.5"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "http://github.com/phaazon/monad-journal";
      url = "";
      synopsis = "Pure logger typeclass and monad transformer";
      description = "This package provides a typeclass for logging in\npure code, or more generally, in any kind of\ncontext. You can do whatever you want with\nlogs, especially get them, clear them or even\nsink them through 'IO' if you're logging in\n@(MonadIO m) => m@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }