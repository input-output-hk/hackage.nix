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
      specVersion = "1.2.0";
      identifier = { name = "tagsoup-parsec"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spoon@killersmurf.com";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com/projects/tagsoup-parsec";
      url = "";
      synopsis = "Tokenizes Tag, so [ Tag ] can be used as parser input.";
      description = "Tokenizes Tag, so [ Tag ] can be used as parser input.  Provides\nbasic combinators.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }