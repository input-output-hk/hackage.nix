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
      identifier = { name = "aterm"; version = "0.1.0.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Christian Maeder <chr.maedere@web.de>";
      author = "Klaus Luettich, Christian Maeder";
      homepage = "https://github.com/spechub/Hets/tree/master/atermlib";
      url = "";
      synopsis = "serialisation for Haskell values with sharing support";
      description = "Efficient serialisation via annotated terms.\nTypeable Haskell values may be converted to and from aterms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }