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
      identifier = { name = "functor-infix"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "vi@zalora.com";
      author = "vi";
      homepage = "https://github.com/fmap/functor-infix";
      url = "";
      synopsis = "Infix operators for mapping over compositions of functors. Lots of them.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }