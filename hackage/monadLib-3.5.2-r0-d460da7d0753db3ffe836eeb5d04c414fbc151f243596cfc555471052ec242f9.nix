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
    flags = { base3 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "monadLib"; version = "3.5.2"; };
      license = "BSD-3-Clause";
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