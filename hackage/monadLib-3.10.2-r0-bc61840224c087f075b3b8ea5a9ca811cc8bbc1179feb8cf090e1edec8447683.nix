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
      specVersion = "3.0";
      identifier = { name = "monadLib"; version = "3.10.2"; };
      license = "ISC";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Iavor S. Diatchki";
      homepage = "http://wiki.github.com/yav/monadlib";
      url = "";
      synopsis = "A collection of monad transformers.";
      description = "A collection of monad transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }