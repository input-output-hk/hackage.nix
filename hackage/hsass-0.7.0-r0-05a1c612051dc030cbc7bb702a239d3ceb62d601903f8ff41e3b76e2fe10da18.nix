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
      identifier = { name = "hsass"; version = "0.7.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "fiolek94@gmail.com";
      author = "Jakub Fijałkowski <fiolek94@gmail.com>";
      homepage = "https://github.com/jakubfijalkowski/hsass";
      url = "";
      synopsis = "Integrating Sass into Haskell applications.";
      description = "This package provides quite simple (but not too simple) API for\ncompilation of <http://sass-lang.com/ Sass> code. It uses\n<http://libsass.org libsass> (hlibsass) underneath, so the code it\nparses/generates should be compatible with original Sass implementation (or at\nleast <http://libsass.org/#sassc sassc>).\nThis package tries to minimize C API usage, so the only place where it is used\nis in the 'compileFile' / 'compileString' methods. This allows us to stay pure\nas long as we can and not waste performance for going back and forth.\nIf you feel that compilation options constrain you too much, you may use rest\nof modules without it. With them, you can use Haskell types and mechanisms to\nmanage libsass's data(eg. importers, options, values) and modify compilation\nprocess as you like.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hlibsass" or (errorHandler.buildDepError "hlibsass"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hsass" or (errorHandler.buildDepError "hsass"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
          buildable = true;
        };
      };
    };
  }