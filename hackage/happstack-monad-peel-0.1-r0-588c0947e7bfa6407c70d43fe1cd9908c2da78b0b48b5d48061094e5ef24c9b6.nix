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
      identifier = { name = "happstack-monad-peel"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@nils.cc";
      author = "Nils Schweinsberg <mail@nils.cc>";
      homepage = "";
      url = "";
      synopsis = "monad-peel instances for Happstack types";
      description = "monad-peel instances for Happstack types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
        ];
        buildable = true;
      };
    };
  }