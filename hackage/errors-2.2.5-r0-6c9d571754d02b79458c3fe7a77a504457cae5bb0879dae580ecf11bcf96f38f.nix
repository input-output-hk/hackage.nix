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
      specVersion = "1.8";
      identifier = { name = "errors"; version = "2.2.5"; };
      license = "BSD-3-Clause";
      copyright = "2012, 2013 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Simplified error-handling";
      description = "The one-stop shop for all your error-handling needs!  Just import\n\"Control.Error\".\n\nThis library encourages an error-handling style that directly uses the type\nsystem, rather than out-of-band exceptions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          (hsPkgs."unexceptionalio" or (errorHandler.buildDepError "unexceptionalio"))
          ] ++ [ (hsPkgs."safe" or (errorHandler.buildDepError "safe")) ];
        buildable = true;
        };
      };
    }