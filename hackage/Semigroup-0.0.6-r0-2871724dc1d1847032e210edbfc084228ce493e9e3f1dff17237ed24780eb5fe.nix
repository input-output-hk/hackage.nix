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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "Semigroup"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "2010 Tony Morris";
      maintainer = "code@tmorris.net";
      author = "Tony Morris";
      homepage = "http://code.google.com/p/semigroup/";
      url = "";
      synopsis = "A semigroup";
      description = "A semigroup is a binary associative operation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }