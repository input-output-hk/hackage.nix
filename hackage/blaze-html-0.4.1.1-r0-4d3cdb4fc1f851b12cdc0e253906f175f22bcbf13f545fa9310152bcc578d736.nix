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
      identifier = { name = "blaze-html"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <jaspervdj@gmail.com>";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://jaspervdj.be/blaze";
      url = "";
      synopsis = "A blazingly fast HTML combinator library.";
      description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
        ];
        buildable = true;
      };
    };
  }