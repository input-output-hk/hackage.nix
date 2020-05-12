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
      specVersion = "1.2";
      identifier = {
        name = "resumable-exceptions";
        version = "0.0.0.20100920";
        };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "nicolas.frisby@gmail.com";
      author = "nicolas.frisby@gmail.com";
      homepage = "";
      url = "";
      synopsis = "A monad transformer for resumable exceptions";
      description = "This package defines a monad transformer for resumable exceptions;\nlike @ErrorT@ except the exceptions include a resumption. It\ninteroperates with the @mtl@ monads, but beware!, many of those\ninstances are unvalidated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }