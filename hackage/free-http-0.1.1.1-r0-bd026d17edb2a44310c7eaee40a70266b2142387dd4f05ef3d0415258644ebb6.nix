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
      identifier = { name = "free-http"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "vilevin@gmail.com";
      author = "Aaron Levin";
      homepage = "https://github.com/aaronlevin/free-http";
      url = "";
      synopsis = "An HTTP Client based on Free Monads.";
      description = "`free-http` is an http-client based on Free Monads.\n`free-http` exposes a Free Monad to express standard http\nverbs as well as several backends to interpet programs\nwritten in the free monad using various http clients\n(currently: a pure client, an `http-client`-backed client,\nand a random client). Please see the ReadMe for usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }