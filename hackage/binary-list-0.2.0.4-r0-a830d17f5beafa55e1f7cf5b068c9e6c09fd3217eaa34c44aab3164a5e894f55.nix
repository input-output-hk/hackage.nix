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
      identifier = { name = "binary-list"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Lists of size length a power of two.";
      description = "Some algorithmic problems work only when the input list\nhas length a power of two. This library provides with a\ndata structure optimized for this.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
    };
  }