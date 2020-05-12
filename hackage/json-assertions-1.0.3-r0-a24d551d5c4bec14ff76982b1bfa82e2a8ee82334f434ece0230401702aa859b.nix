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
      identifier = { name = "json-assertions"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "http://github.com/ocharles/json-assertions.git";
      url = "";
      synopsis = "Test that your (Aeson) JSON encoding matches your expectations";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."indexed" or (errorHandler.buildDepError "indexed"))
          (hsPkgs."indexed-free" or (errorHandler.buildDepError "indexed-free"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }